import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/page/trailer_view.dart';
import 'package:samansa_flutter_test/providers/trailers_provider.dart';
import 'package:video_player/controller/video_player_controller.dart';
import 'package:video_player/controller/video_player_data_source.dart';
import 'package:video_player/configurations/configurations.dart';

class TrailersPage extends HookConsumerWidget {
  const TrailersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trailersState = ref.watch(trailersProvider);
    final trailersNotifier = ref.read(trailersProvider.notifier);
    final pageController = usePageController();
    final currentIndex = useState<int>(0);
    final controllers = useRef<Map<String, VideoPlayerController>>({});
    final previousIndex = useRef<int?>(null);

    // Handle page changes and load more
    useEffect(() {
      void onPageChanged(int index) {
        if (index == previousIndex.value) return;
        
        previousIndex.value = index;
        currentIndex.value = index;
        
        // Load more if near the end
        if (index >= trailersState.edges.length - 3 && 
            trailersState.hasNextPage && 
            !trailersState.isLoadingMore) {
          trailersNotifier.loadMore();
        }

        // Play current video, pause others
        final edges = trailersState.edges;
        if (edges.isNotEmpty && index < edges.length) {
          final currentEdge = edges[index];
          final currentVideoId = currentEdge.node?.id;
          
          if (currentVideoId != null) {
            for (final entry in controllers.value.entries) {
              final videoId = entry.key;
              final controller = entry.value;
              
              if (videoId == currentVideoId) {
                // Play current video if initialized
                if (controller.value.initialized) {
                  controller.play();
                }
              } else {
                // Pause other videos
                controller.pause();
              }
            }
          }
        }
      }

      void listener() {
        if (pageController.page != null) {
          final page = pageController.page!.round();
          if (page != currentIndex.value) {
            onPageChanged(page);
          }
        }
      }

      pageController.addListener(listener);
      
      // Initial call
      if (pageController.hasClients) {
        onPageChanged(pageController.page?.round() ?? 0);
      }

      return () {
        pageController.removeListener(listener);
      };
    }, [trailersState.edges.length, trailersState.hasNextPage]);

    // Create and manage controllers
    useEffect(() {
      final edges = trailersState.edges;
      
      // Create controllers for videos (limit to current and nearby)
      final startIndex = (currentIndex.value - 1).clamp(0, edges.length);
      final endIndex = (currentIndex.value + 2).clamp(0, edges.length);
      
      for (int i = startIndex; i < endIndex; i++) {
        if (i >= edges.length) break;
        
        final edge = edges[i];
        final node = edge.node;
        if (node == null || node.fileUrl == null) continue;
        
        final videoId = node.id;
        if (!controllers.value.containsKey(videoId)) {
          final controller = VideoPlayerController(
            configuration: VideoPlayerConfiguration(
              autoPlay: false,
              autoLoop: false,
            ),
            dataSource: VideoPlayerDataSource(
              sourceType: VideoPlayerDataSourceType.network,
              fileUrl: node.fileUrl!,
            ),
          );
          controllers.value[videoId] = controller;
          
          // Auto-play when initialized if it's the current video
          if (i == currentIndex.value) {
            controller.addListener(() {
              if (controller.value.initialized && 
                  !controller.value.isPlaying &&
                  i == currentIndex.value) {
                controller.play();
              }
            });
          }
        }
      }

      // Dispose controllers that are far from current index
      final controllersToRemove = <String>[];
      for (final entry in controllers.value.entries) {
        final videoId = entry.key;
        bool shouldKeep = false;
        
        for (int i = startIndex; i < endIndex; i++) {
          if (i >= edges.length) break;
          if (edges[i].node?.id == videoId) {
            shouldKeep = true;
            break;
          }
        }
        
        if (!shouldKeep) {
          controllersToRemove.add(videoId);
        }
      }
      
      for (final videoId in controllersToRemove) {
        final controller = controllers.value.remove(videoId);
        controller?.dispose();
      }

      return null;
    }, [currentIndex.value, trailersState.edges]);

    // Cleanup on dispose
    useEffect(() {
      return () {
        for (final controller in controllers.value.values) {
          controller.dispose();
        }
        controllers.value.clear();
      };
    }, []);

    if (trailersState.isLoading && trailersState.edges.isEmpty) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Trailers",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20,
            ),
          ),
        ),
        body: const Center(
          child: CircularProgressIndicator(
            color: Colors.yellow,
          ),
        ),
      );
    }

    if (trailersState.edges.isEmpty && !trailersState.isLoading) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Trailers",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            "動画がありません",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Trailers",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Dispose all controllers before refresh
          for (final controller in controllers.value.values) {
            controller.dispose();
          }
          controllers.value.clear();
          previousIndex.value = null;
          currentIndex.value = 0;
          await trailersNotifier.loadTrailers(refresh: true);
        },
        child: PageView.builder(
          controller: pageController,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            if (index >= trailersState.edges.length) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.yellow,
                ),
              );
            }
            
            final edge = trailersState.edges[index];
            final trailer = edge.node;
            if (trailer == null) {
              return const SizedBox.shrink();
            }

            final controller = controllers.value[trailer.id];
            return TrailerView(
              trailer: trailer,
              controller: controller,
            );
          },
          itemCount: trailersState.hasNextPage || trailersState.isLoadingMore
              ? trailersState.edges.length + 1
              : trailersState.edges.length,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/hooks/use_trailers.dart';
import 'package:samansa_flutter_test/page/trailer_video_player_controller_provider.dart';
import 'package:samansa_flutter_test/widgets/loading.dart';

class TrailersPage extends HookConsumerWidget {
  const TrailersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useTrailersRes = useTrailers();
    final queryResult = useTrailersRes.queryResult;
    final pageController = usePageController();
    final lastScrollDirection = useRef<ScrollDirection?>(null);

    if (queryResult.result.hasException) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            queryResult.result.exception?.toString() ?? "ERROR",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    final trailers = useTrailersRes.edges;
    if ((trailers?.isEmpty ?? true) && queryResult.result.isLoading) {
      return const Loading();
    }

    if (trailers?.isEmpty ?? true) {
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
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async => await queryResult.refetch(),
            child: Stack(
              children: [
                if (trailers?.isNotEmpty == true && !queryResult.result.isLoading)
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: Text(
                        "最後まで視聴しました",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification notification) {
                    if (notification is ScrollStartNotification) {
                      lastScrollDirection.value = null;
                    } else if (notification is UserScrollNotification) {
                      lastScrollDirection.value = notification.direction;
                    } else if (notification is ScrollEndNotification) {
                      // スクロール終了時の処理
                    }
                    return false;
                  },
                  child: PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final trailer = trailers![index].node!;
                      return TrailerVideoPlayerControllerProvider(
                        trailer: trailer,
                      );
                    },
                    itemCount: trailers?.length,
                    onPageChanged: (index) async {
                      final cursors = trailers!.map((e) => e.cursor).toList();
                      if (cursors.length >= 3) {
                        // 残り3件になったら次のページを取得
                        final thirdCursorFromLast = cursors[cursors.length - 3];
                        if (cursors[index] == thirdCursorFromLast) {
                          await useTrailersRes.fetchNext(cursors.last);
                        }
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

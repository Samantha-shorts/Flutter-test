import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';
import 'package:samansa_flutter_test/widgets/hit_area.dart';
import 'package:samansa_flutter_test/widgets/info_section.dart';
import 'package:samansa_flutter_test/widgets/loading.dart';
import 'package:video_player/controller/video_player_controller.dart';
import 'package:video_player/controls/controls.dart';
import 'package:video_player/player/video_player.dart';

class TrailerView extends HookConsumerWidget {
  const TrailerView({
    super.key,
    required this.trailer,
    required this.controller,
  });

  final Query$trailerVideos$trailerVideos$edges$node trailer;
  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final togglePlay = useCallback(() {
      if (controller.value.isPlaying == true) {
        controller.pause();
      } else {
        controller.play();
      }
    }, [controller]);

    final isSmall = useMemoized(
      () => MediaQuery.of(context).size.height < 700,
      [context],
    );

    return VideoPlayerControllerProvider(
      controller: controller,
      child: ColoredBox(
        color: Colors.black,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: MoreButton(),
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, _) {
                      if (!controller.value.initialized) {
                        return const Loading();
                      }
                      return Stack(
                        children: [
                          VideoPlayer(
                            controller: controller,
                            noProvider: true,
                          ),
                          TrailerHitArea(onTap: togglePlay),
                        ],
                      );
                    },
                  ),
                ),
              ),
              TrailerInfoSection(
                isSmall: isSmall,
                trailer: trailer,
                controller: controller,
              ),
              SizedBox(height: isSmall ? 10 : 16),
              SizedBox(
                height: isSmall ? 10 : 16,
                child: const MaterialVideoProgressBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

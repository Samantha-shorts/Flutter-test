import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';
import 'package:samansa_flutter_test/widgets/info_section.dart';
import 'package:video_player/controller/video_player_controller.dart';

class TrailerView extends HookConsumerWidget {
  const TrailerView({
    super.key,
    required this.trailer,
    this.controller,
  });

  final Query$trailerVideos$trailerVideos$edges$node trailer;
  final VideoPlayerController? controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSmall = useMemoized(
      () => MediaQuery.of(context).size.height < 700,
      [context],
    );

    if (controller == null) {
      return ColoredBox(
        color: Colors.black,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: const Center(
                    child: Text(
                      "VideoPlayerControllerを実装してください",
                      style: TextStyle(color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              TrailerInfoSection(
                isSmall: isSmall,
                trailer: trailer,
                controller: null,
              ),
            ],
          ),
        ),
      );
    }
    return const ColoredBox(
      color: Colors.black,
      child: Center(
        child: Text(
          "TrailerViewの実装を完成させてください",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

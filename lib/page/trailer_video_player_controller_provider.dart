import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';
import 'package:samansa_flutter_test/page/trailer_view.dart';
import 'package:video_player/video_player.dart';

class TrailerVideoPlayerControllerProvider extends HookConsumerWidget {
  const TrailerVideoPlayerControllerProvider({
    super.key,
    required this.trailer,
  });

  final Query$trailerVideos$trailerVideos$edges$node trailer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useMemoized(
      () {
        final controller = VideoPlayerController(
          configuration: VideoPlayerConfiguration(
            initialPlayBackSpeedRate: 1.0,
            autoPlay: true,
            hidesControls: true,
            autoLoop: true,
            controlsConfiguration: const VideoPlayerControlsConfiguration(
              progressBarPlayedColor: Colors.yellow,
              progressBarHandleColor: Colors.yellow,
              progressBarBackgroundColor: Colors.grey,
              iconsColor: Colors.white,
            ),
            bufferingConfiguration: const VideoPlayerBufferingConfiguration(
              minBufferMs: 10000,
              maxBufferMs: 30000,
              bufferForPlaybackMs: 3000,
              bufferForPlaybackAfterRebufferMs: 3000,
            ),
          ),
        );

        // 動画URLを設定
        if (trailer.fileUrl != null) {
          controller.setNetworkDataSource(
            fileUrl: trailer.fileUrl!,
            disableRemoteControl: true,
            subtitles: (trailer.vtts ?? [])
                .map(
                  (subtitle) => VideoPlayerSubtitlesSource(
                    type: VideoPlayerSubtitlesSourceType.network,
                    name: subtitle.locale,
                    selectedByDefault: false,
                    urls: [subtitle.url],
                  ),
                )
                .toList(),
          );
        }

        return controller;
      },
      [],
    );

    useEffect(() {
      return controller.dispose;
    }, []);

    return TrailerView(
      trailer: trailer,
      controller: controller,
    );
  }
}

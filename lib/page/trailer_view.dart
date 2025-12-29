import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/schema_typedefs.dart';
import 'package:samansa_flutter_test/hooks/video_player_controller_hook.dart';
import 'package:samansa_flutter_test/widgets/info_section.dart';
import 'package:samansa_flutter_test/widgets/players/trailer_video_player.dart';
import 'package:samansa_flutter_test/widgets/players/video_seek_bar.dart';
import 'package:video_player/video_player.dart';

class TrailerView extends HookConsumerWidget {
  const TrailerView({
    required this.trailer,
    super.key,
  });

  final TrailerNode trailer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSmall = useMemoized(
      () => MediaQuery.of(context).size.height < 700,
      [context],
    );
    final controller = useVideoPlayerController(
      dataSource: VideoPlayerDataSource(
        sourceType: VideoPlayerDataSourceType.network,
        fileUrl: trailer.fileUrl,
      ),
      configuration: VideoPlayerConfiguration(
        autoPlay: true,
        autoLoop: true,
        hidesControls: true,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
              decoration: const BoxDecoration(
                color: Colors.black87,
              ),
              child: TrailerVideoPlayer(
                controller: controller,
              )),
        ),
        TrailerInfoSection(
          isSmall: isSmall,
          trailer: trailer,
        ),
        const Spacer(),
        VideoSeekBar(
          controller: controller,
        ),
      ],
    );
  }
}

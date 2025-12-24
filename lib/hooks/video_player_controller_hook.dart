import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

/// Creates a [VideoPlayerController] that will be disposed automatically.
///
/// See also:
/// - [VideoPlayerController]
VideoPlayerController useVideoPlayerController({
  VideoPlayerConfiguration? configuration,
  VideoPlayerDataSource? dataSource,
}) =>
    use(
      _VideoPlayerControllerHook(
        configuration: configuration,
        dataSource: dataSource,
      ),
    );

class _VideoPlayerControllerHook extends Hook<VideoPlayerController> {
  const _VideoPlayerControllerHook({
    this.configuration,
    this.dataSource,
  });

  final VideoPlayerConfiguration? configuration;
  final VideoPlayerDataSource? dataSource;

  @override
  HookState<VideoPlayerController, Hook<VideoPlayerController>> createState() =>
      _VideoPlayerControllerHookState();
}

class _VideoPlayerControllerHookState
    extends HookState<VideoPlayerController, _VideoPlayerControllerHook> {
  late final controller = VideoPlayerController(
    configuration: hook.configuration ?? VideoPlayerConfiguration(),
    dataSource: hook.dataSource,
  );

  @override
  VideoPlayerController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'useVideoPlayerController';
}

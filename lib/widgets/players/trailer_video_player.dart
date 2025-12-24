import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TrailerVideoPlayer extends StatefulWidget {
  const TrailerVideoPlayer({
    required this.controller,
    super.key,
  });

  final VideoPlayerController controller;

  @override
  State<TrailerVideoPlayer> createState() => _TrailerVideoPlayerState();
}

class _TrailerVideoPlayerState extends State<TrailerVideoPlayer> {
  void _playOrPause() {
    if (widget.controller.value.isPlaying) {
      widget.controller.pause();
    } else {
      widget.controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        VideoPlayer(
          controller: widget.controller,
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: _playOrPause,
          ),
        ),
      ],
    );
  }
}

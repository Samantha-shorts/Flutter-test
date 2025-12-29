import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoSeekBar extends StatefulWidget {
  const VideoSeekBar({
    required this.controller,
    super.key,
  });

  final VideoPlayerController controller;

  @override
  State<VideoSeekBar> createState() => _VideoSeekBarState();
}

class _VideoSeekBarState extends State<VideoSeekBar> {
  double _maxValue = 0;
  double _seekValue = 0;

  bool _isChangeStart = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onControllerChange);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_onControllerChange);
  }

  void _onControllerChange() {
    if (_isChangeStart || widget.controller.value.duration == null) {
      return;
    }

    setState(() {
      if (_maxValue == 0) {
        _maxValue = widget.controller.value.duration!.inMilliseconds.toDouble();
      }

      _seekValue = widget.controller.value.position.inMilliseconds
          .toDouble()
          .clamp(0, _maxValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      onChangeStart: (_) => _isChangeStart = true,
      onChanged: (double value) => setState(() => _seekValue = value),
      onChangeEnd: (double value) async {
        await widget.controller.seekTo(
          Duration(
            milliseconds: value.toInt(),
          ),
        );
        _isChangeStart = false;
      },
      max: _maxValue,
      value: _seekValue,
      activeColor: Colors.yellow,
    );
  }
}

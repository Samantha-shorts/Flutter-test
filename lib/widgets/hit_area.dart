import 'package:flutter/material.dart';

class TrailerHitArea extends StatelessWidget {
  const TrailerHitArea({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(),
      ),
    );
  }
}

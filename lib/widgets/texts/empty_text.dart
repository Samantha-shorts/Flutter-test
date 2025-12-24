import 'package:flutter/material.dart';

class EmptyText extends StatelessWidget {
  const EmptyText({
    this.onRefresh,
    this.text,
    super.key,
  });

  final VoidCallback? onRefresh;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: <Widget>[
          Text(
            text ?? '動画がありません',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          if (onRefresh != null)
            IconButton(
              onPressed: onRefresh,
              iconSize: 32,
              icon: const Icon(
                Icons.refresh_rounded,
                color: Colors.yellow,
              ),
            ),
        ],
      ),
    );
  }
}

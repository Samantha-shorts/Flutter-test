import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    this.onRetry,
    required this.error,
    super.key,
  });

  final VoidCallback? onRetry;
  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: <Widget>[
          Text(
            error,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
        ],
      ),
    );
  }
}

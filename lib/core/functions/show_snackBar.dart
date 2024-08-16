import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(context, String title) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        'cannot launch book $title',
        style: const TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}

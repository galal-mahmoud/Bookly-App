import 'package:bookly_app_v1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.text, this.borderRadius, required this.textColor, required this.onPressed, });
  final Color color;
  final String text;
  final BorderRadius? borderRadius;
  final Color textColor;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
        child: TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape:  RoundedRectangleBorder(
          borderRadius:borderRadius ?? BorderRadius.circular(
            12.0
          )
        )
      ),
      child: Text(
        text,
        style: Styles.titleMeduim18.copyWith(
          color: textColor
        ),
      ),
    ));
  }
}

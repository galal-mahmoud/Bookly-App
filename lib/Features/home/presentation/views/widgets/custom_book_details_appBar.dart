import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.close),
              Icon(Icons.shopping_cart_outlined),
            ],
          )),
    );
  }
}

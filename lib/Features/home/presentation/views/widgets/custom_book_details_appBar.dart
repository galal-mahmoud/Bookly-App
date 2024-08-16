import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               GestureDetector(onTap: (){
                 GoRouter.of(context).pop();
               },child: const Icon(Icons.close),),
              const Icon(Icons.shopping_cart_outlined),
            ],
          )),
    );
  }
}

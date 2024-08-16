import 'package:bookly_app_v1/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class ActionBook extends StatelessWidget {
  const ActionBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(color: Colors.white, text: '19.99€',borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            bottomLeft: Radius.circular(16.0),
          ), textColor: Colors.black,),
        ),
        Expanded(
          child: CustomButton(color: Colors.orange, text: 'Free Preview', borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ), textColor: Colors.white, )
        ),
      ],
    );
  }
}

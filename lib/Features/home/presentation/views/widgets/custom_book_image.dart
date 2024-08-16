import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key, required this.aspectRatio, this.borderRaduis = 16.0, this.image,
  });
  final double aspectRatio;
  final double borderRaduis;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRaduis),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(image ?? 'https://foodtank.com/wp-content/uploads/2021/07/alfons-morales-YLSwjSy7stw-unsplash.jpg'),
          ),
        ),
      ),);
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key, this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(16.0),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: image ?? 'https://foodtank.com/wp-content/uploads/2021/07/alfons-morales-YLSwjSy7stw-unsplash.jpg',
            placeholder: (context, url) => const Icon(Icons.error),

        ),
      ),
    );
  }
}

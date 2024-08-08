import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key, required this.aspectRatio, this.borderRaduis = 16.0,
  });
  final double aspectRatio;
  final double borderRaduis;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRaduis),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.kTestImage),
          ),
        ),
      ),);
  }
}

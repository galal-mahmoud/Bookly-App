import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.kTestImage),
          ),
        ),
      ),);
  }
}

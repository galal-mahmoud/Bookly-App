import 'package:bookly_app_v1/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 40.0, bottom: 20),
        child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.kLogo, height: 24,),
        IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass),),
      ],
    ));
  }
}

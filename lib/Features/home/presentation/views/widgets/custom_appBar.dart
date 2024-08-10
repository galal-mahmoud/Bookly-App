import 'package:bookly_app_v1/core/utils/app_router.dart';
import 'package:bookly_app_v1/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 40.0, bottom: 20, start: 30.0, end: 30.0),
        child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.kLogo, height: 24,),
        IconButton(onPressed: (){
          GoRouter.of(context).push(AppRouter.kSearchView);
        }, icon: const Icon(FontAwesomeIcons.magnifyingGlass),),
      ],
    ));
  }
}

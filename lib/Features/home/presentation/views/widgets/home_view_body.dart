import 'package:bookly_app_v1/Features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:bookly_app_v1/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app_v1/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'best_seller_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsetsDirectional.only(start: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            CustomListViewItem(),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Best Seller',
              style: Styles.titleMeduim18
            ),
            SizedBox(height: 20,),
            BestSellerListViewItem(),
          ],
        ),);
  }
}



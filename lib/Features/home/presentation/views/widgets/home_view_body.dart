import 'package:bookly_app_v1/Features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:bookly_app_v1/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app_v1/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 10.0),
                    child:CustomListViewItem()),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 30.0),
                    child: Text(
                    'Best Seller',
                    style: Styles.titleMeduim18
                )),
                SizedBox(height: 10,),
              ],
            ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}



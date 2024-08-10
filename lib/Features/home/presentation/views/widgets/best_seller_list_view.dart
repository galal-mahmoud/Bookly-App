import 'package:bookly_app_v1/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          clipBehavior: Clip.none,
      physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsetsDirectional.zero,
        itemCount: 10,
        itemBuilder: (context, index){
          return const Padding(
            padding: EdgeInsetsDirectional.only(top: 10.0, bottom: 5.0, start: 16.0),
            child: BestSellerListViewItem(),
          );
        },
    );
  }
}

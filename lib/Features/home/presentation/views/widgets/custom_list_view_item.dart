import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_item.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsetsDirectional.only(end: 8.0),
            child: CustomItem(),
          );
        },
      ),
    );
  }
}

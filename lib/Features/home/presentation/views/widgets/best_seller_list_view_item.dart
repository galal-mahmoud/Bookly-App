import 'package:bookly_app_v1/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 125,
        child:Row(
          children: [
            const CustomItem(aspectRatio: 2.3/4, borderRaduis: 8.0,),
            const SizedBox(width: 30.0,),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Golba of Fire',

                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleMeduim20.copyWith(
                          fontFamily: kGtSectraFine
                      ),
                    )),
                const Text(
                  'J.K Rowling',
                  style: Styles.titleMeduim14,
                ),
                const BookRating(),
              ],
            )),
          ],
        ));
  }
}


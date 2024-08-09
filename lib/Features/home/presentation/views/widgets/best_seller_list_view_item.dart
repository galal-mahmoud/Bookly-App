import 'package:bookly_app_v1/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_book_image.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
        child: SizedBox(
      height: 125,
      child: Row(
        children: [
          const CustomBookImage(
            aspectRatio: 2.3 / 4,
            borderRaduis: 8.0,
          ),
          const SizedBox(
            width: 30.0,
          ),
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
                      style: Styles.titleMeduim20
                          .copyWith(fontFamily: kGtSectraFine),
                    )),
                const Text(
                  'J.K Rowling',
                  style: Styles.titleMeduim14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99€',
                      style: Styles.titleMeduim20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),);
  }
}
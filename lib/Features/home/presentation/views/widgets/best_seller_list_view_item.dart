import 'package:bookly_app_v1/Features/home/data/models/book_model.dart';
import 'package:bookly_app_v1/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app_v1/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
             CustomBookImage(
              image: bookModel.volumeInfo?.imageLinks?.thumbnail ?? 'https://foodtank.com/wp-content/uploads/2021/07/alfons-morales-YLSwjSy7stw-unsplash.jpg',
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
                        bookModel.volumeInfo!.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.titleMeduim20
                            .copyWith(fontFamily: kGtSectraFine, height: 1),
                      )),
                   Text(
                    bookModel.volumeInfo!.authors![0] ,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.titleMeduim14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.titleMeduim20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(
                        rating:'0',
                        count: bookModel.volumeInfo!.pageCount!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

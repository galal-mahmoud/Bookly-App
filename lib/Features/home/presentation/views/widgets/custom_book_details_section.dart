import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model.dart';
import 'book_rating.dart';
import 'custom_book_details_appBar.dart';
import 'custom_book_image.dart';

class CustomBookDetailsSection extends StatelessWidget {
  const CustomBookDetailsSection({super.key, required this.bookModel, });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
              horizontal: width * 0.3, vertical: 8.0),
          child: CustomBookImage(
            image: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
         Text(
           maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          bookModel.volumeInfo!.title!,
          style: Styles.titleMeduim30.copyWith(
            height: 1,
          ),
        ),
         Opacity(
          opacity: 0.7,
          child: Text(
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            bookModel.volumeInfo?.authors?[0] ?? '',
            style: Styles.titleMeduim16,
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
         BookRating(
           rating: '0',
           count: bookModel.volumeInfo?.pageCount ?? 0,
         ),
      ],
    );
  }
}

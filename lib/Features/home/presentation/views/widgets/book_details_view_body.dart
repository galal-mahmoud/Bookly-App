import 'package:bookly_app_v1/Features/home/presentation/views/widgets/action_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_details_appBar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: width * 0.28, vertical: 16.0),
          child: const CustomBookImage(
            aspectRatio: 2.4 / 3.9,
          ),
        ),
        const SizedBox(height: 10.0,),
        const Text(
          textAlign: TextAlign.center,
          'The Jungle Book ',
          style: Styles.titleMeduim30,
        ),
        const Opacity(
          opacity: 0.7,
            child: Text(
          'Rudyard Kipling',
          style: Styles.titleMeduim16,
        ),),
        const SizedBox(height: 24.0,),
        const BookRating(),
        const SizedBox(height: 16.0,),
        const Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.0),
            child: ActionBook(),),
      ],
    );
  }
}

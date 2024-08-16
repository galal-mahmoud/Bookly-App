import 'package:bookly_app_v1/Features/home/presentation/views/widgets/similer_books_list_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data/models/book_model.dart';
import 'custom_book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel,});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              CustomBookDetailsSection(bookModel: bookModel,),
              SimilerBooksListViewSection(bookModel: bookModel,),
            ],
          ),
        )
      ],
    );
  }
}

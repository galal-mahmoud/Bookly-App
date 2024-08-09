import 'package:bookly_app_v1/Features/home/presentation/views/widgets/similer_books_list_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              CustomBookDetailsSection(),
              SimilerBooksListViewSection(),
            ],
          ),
        )
      ],
    );
  }
}

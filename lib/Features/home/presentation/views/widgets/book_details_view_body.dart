import 'package:bookly_app_v1/Features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app_v1/Features/home/presentation/manager/similer_books/similar_books_cubit.dart';
import 'package:bookly_app_v1/Features/home/presentation/views/widgets/similer_books_list_view_section.dart';
import 'package:bookly_app_v1/core/utils/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplement>()),
            child: const Column(
              children: [
                CustomBookDetailsSection(),
                SimilerBooksListViewSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

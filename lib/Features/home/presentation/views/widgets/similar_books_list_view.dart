import 'package:bookly_app_v1/core/widgets/custom_error_widget.dart';
import 'package:bookly_app_v1/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/similer_books/similar_books_cubit.dart';
import 'custom_book_image.dart';


class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.17,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    image: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        }
        else if(state is SimilarBooksFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

import 'package:bookly_app_v1/core/widgets/custom_error_widget.dart';
import 'package:bookly_app_v1/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/similer_books/similar_books_cubit.dart';
import 'custom_book_image.dart';


class SimilarBooksListView extends StatefulWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  State<SimilarBooksListView> createState() => _SimilarBooksListViewState();
}

class _SimilarBooksListViewState extends State<SimilarBooksListView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(categories: 'Programming');
    super.initState();
  }
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
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 5.0),
                  child: CustomBookImage(),
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

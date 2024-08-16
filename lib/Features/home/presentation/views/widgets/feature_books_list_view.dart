import 'package:bookly_app_v1/Features/home/presentation/manager/feature_Newest_books/feature_books_cubit.dart';
import 'package:bookly_app_v1/core/widgets/custom_error_widget.dart';
import 'package:bookly_app_v1/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state)
      {
        if(state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  child: CustomBookImage(
                    image: state.books[index].volumeInfo?.imageLinks?.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if(state is FeatureBooksFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

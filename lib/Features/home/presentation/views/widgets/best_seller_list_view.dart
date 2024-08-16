import 'package:bookly_app_v1/Features/home/presentation/manager/feature_Newest_books/feature_books_cubit.dart';
import 'package:bookly_app_v1/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app_v1/core/widgets/custom_error_widget.dart';
import 'package:bookly_app_v1/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state){
          if(state is FeatureBooksSuccess){
            return ListView.builder(
              clipBehavior: Clip.none,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsetsDirectional.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index){
                return  Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10.0, bottom: 5.0, start: 16.0),
                  child: BestSellerListViewItem(bookModel: state.books[index],),
                );
              },
            );
          }else if(state is FeatureBooksFailure){
            return CustomErrorWidget(errorMessage: state.errorMessage);
          }else {
            return const CustomLoadingIndicator();
          }
        }
    );
  }
}

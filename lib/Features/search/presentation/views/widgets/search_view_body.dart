import 'package:bookly_app_v1/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app_v1/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomSearchTextField(),
        ),

        SliverFillRemaining(
          child: BestSellerListView(
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 80.0,
          ),
        ),
      ],
    );
  }

}

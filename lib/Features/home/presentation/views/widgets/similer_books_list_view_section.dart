import 'package:bookly_app_v1/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'action_book.dart';

class SimilerBooksListViewSection extends StatelessWidget {
  const SimilerBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16.0,),
        const Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 24.0),
          child: ActionBook(),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 16.0, bottom: 16.0),
          child: Text(
            'you can also read',
            style: Styles.titleMeduim16.copyWith(fontWeight: FontWeight.bold,),
          ),),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 5.0),
                child: CustomBookImage(),
              );
            },
          ),
        )
      ],
    );
  }
}

import 'package:bookly_app_v1/Features/home/data/models/book_model.dart';
import 'package:bookly_app_v1/core/functions/launch_custom_url.dart';
import 'package:bookly_app_v1/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ActionBook extends StatelessWidget {
  const ActionBook({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            color: Colors.white,
            text: 'Free',
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            ),
            textColor: Colors.black,
            onPressed: () {},
          ),
        ),
        Expanded(
            child: CustomButton(
          color: Colors.orange,
          text: getText(bookModel),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
          textColor: Colors.white,
          onPressed: () async {
            launchCustomUlr(context,
                url: bookModel.volumeInfo?.previewLink,
                title: bookModel.volumeInfo!.title!);
          },
        )),
      ],
    );
  }

 String getText(BookModel bookModel) {
    if(bookModel.volumeInfo?.previewLink == null){
      return 'Not Available';
    }else{
      return 'Preview';
    }
  }
}

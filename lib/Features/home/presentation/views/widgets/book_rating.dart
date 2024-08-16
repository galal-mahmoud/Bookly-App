import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});
  final String rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.only(end: 16.0),
        child: SizedBox(
          width: 125.0,
            child: Row(
      children: [
        const Spacer(),
        const Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 20.0),
        const SizedBox(width: 6.3,),
         Text(
          rating.toString(),
          style: Styles.titleMeduim16,
        ),
        const SizedBox(width: 5,),
        Text(
          '($count)',
          style: Styles.titleMeduim14.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    )));
  }
}


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16.0),
        child: Row(
      children: [
         Text(
          '19.99€',
          style: Styles.titleMeduim20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,),
        const SizedBox(width: 6.3,),
        const Text(
          '4.8',
          style: Styles.titleMeduim16,
        ),
        const SizedBox(width: 5,),
        const Text(
          '(245)',
          style: Styles.titleMeduim14,
        ),
      ],
    ));
  }
}

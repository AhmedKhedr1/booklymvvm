
import 'package:booklymvvm/Core/Utils/Styless.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.star,
          color: Colors.amberAccent,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '(2345)',
          style:
              Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.6)),
        )
      ],
    );
  }
}
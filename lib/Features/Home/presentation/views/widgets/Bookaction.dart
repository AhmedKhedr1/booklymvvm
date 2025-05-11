import 'package:booklymvvm/Core/widgets/Custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: Custombutton(
              Buttontext: '19.99',
              textcolor: Colors.black,
              ButtonFuncation: () {},
              ButtonColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: Custombutton(
              Buttontext: 'Free Preview',
              textcolor: Colors.white,
              ButtonFuncation: () {},
              ButtonColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          )
        ],
      ),
    );
  }
}

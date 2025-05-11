import 'package:booklymvvm/Core/Utils/Styless.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.Buttontext,
    required this.textcolor,
    required this.ButtonFuncation,
    required this.ButtonColor,
    required this.borderRadius,
  });
  final String Buttontext;
  final Color textcolor;
  final void Function() ButtonFuncation;
  final Color ButtonColor;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: ButtonFuncation,
        style: TextButton.styleFrom(
            backgroundColor: ButtonColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
        child: Text(
          Buttontext,
          style: Styles.textStyle16
              .copyWith(color: textcolor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

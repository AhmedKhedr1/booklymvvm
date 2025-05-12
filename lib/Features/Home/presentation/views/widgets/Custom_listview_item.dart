// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class Custom_listview_item extends StatelessWidget {
  Custom_listview_item({
    this.width,
    super.key,
  });
  double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      width: width,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          width: 100,
          height: MediaQuery.sizeOf(context).height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/test_image.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

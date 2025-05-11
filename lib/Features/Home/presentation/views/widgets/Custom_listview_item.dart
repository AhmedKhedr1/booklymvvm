
import 'package:flutter/material.dart';

class Custom_listview_item extends StatelessWidget {
  const Custom_listview_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          width: 100,
          height: MediaQuery.sizeOf(context).height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),  
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/test_image.png',),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:booklymvvm/Constants.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/BookdetailsView_Body.dart';
import 'package:flutter/material.dart';

class BookdetailsView extends StatelessWidget {
  const BookdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KprimaryColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: 30,
              )),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_checkout_outlined, size: 30),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: BookdetailsviewBody(),
    );
  }
}

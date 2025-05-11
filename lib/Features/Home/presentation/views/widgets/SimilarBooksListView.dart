
import 'package:booklymvvm/Features/Home/presentation/views/widgets/Custom_listview_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.only(right: 10),
              child: Custom_listview_item());
        },
      ),
    );
  }
}

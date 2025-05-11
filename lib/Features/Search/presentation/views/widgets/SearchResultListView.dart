import 'package:booklymvvm/Core/Utils/AppRouter.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/BestSelleritem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(Approuter.Kbookdetailsview);
              },
              child: BestSelleritem()
              ),
        );
      },
    );
  }
}
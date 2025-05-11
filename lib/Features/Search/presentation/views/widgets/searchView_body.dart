import 'package:booklymvvm/Core/Utils/Styless.dart';
import 'package:booklymvvm/Features/Search/presentation/views/widgets/Custom_searchTExtField.dart';
import 'package:booklymvvm/Features/Search/presentation/views/widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: CustomSearchtextField(),
              )),
              IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          const Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Best Seller',
                        style: Styles.textStyle18,
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(child: SearchResultListView())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

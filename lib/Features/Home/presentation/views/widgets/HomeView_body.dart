import 'package:booklymvvm/Core/Utils/Styless.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/BestSellerListView.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/Custom_AppBAr.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/FeaturedBookListView.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custom_AppBAr(),
              FeaturedBookListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}

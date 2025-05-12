import 'package:booklymvvm/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Custom_AppBAr extends StatelessWidget {
  const Custom_AppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 40, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/Logo.png',
            height: 24,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Approuter.Ksearchview);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}

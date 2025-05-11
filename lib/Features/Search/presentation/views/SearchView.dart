import 'package:booklymvvm/Features/Search/presentation/views/widgets/searchView_body.dart';
import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchviewBody(),
    );
  }
}
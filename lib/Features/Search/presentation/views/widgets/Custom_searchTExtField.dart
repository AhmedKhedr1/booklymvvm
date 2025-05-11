import 'package:flutter/material.dart';

class CustomSearchtextField extends StatelessWidget {
  const CustomSearchtextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white),
          ),
          hintText: 'Search',
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
    );
  }
}
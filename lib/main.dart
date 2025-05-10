import 'package:booklymvvm/Constants.dart';
import 'package:booklymvvm/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimaryColor),
      debugShowCheckedModeBanner: false,
      home: Splashview(),
    );
  }
}

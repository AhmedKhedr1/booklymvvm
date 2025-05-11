// ignore_for_file: file_names

import 'package:booklymvvm/Core/Utils/AppRouter.dart';
import 'package:booklymvvm/Features/Home/presentation/views/Home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashviewBody extends StatefulWidget {
  const SplashviewBody({super.key});

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate(_controller);
    _controller.forward();
    navigatetoHome();
  }

  Future<Null> navigatetoHome() {
    return Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push(Approuter.Khomeview);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/Logo.png'),
        SizedBox(
          height: 8,
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return SlideTransition(
              position: _animation,
              child: Text(
                'Read free books',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }
}

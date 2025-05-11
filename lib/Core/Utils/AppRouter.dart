import 'package:booklymvvm/Features/Home/presentation/views/BookDetails_View.dart';
import 'package:booklymvvm/Features/Home/presentation/views/Home_view.dart';
import 'package:booklymvvm/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const String Khomeview = '/homeview';
  static const String Kbookdetailsview = '/bookdetailsview';
  static const String Khome = '/';
  static final router = GoRouter(routes: [
    GoRoute(
      path: Khome,
      builder: (context, state) => Splashview(),
    ),
    GoRoute(
      path: Khomeview,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: Kbookdetailsview,
      builder: (context, state) => BookdetailsView(),
    )
  ]);
}

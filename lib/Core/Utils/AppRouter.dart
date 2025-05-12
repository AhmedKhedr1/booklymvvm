import 'package:booklymvvm/Features/Home/presentation/views/BookDetails_View.dart';
import 'package:booklymvvm/Features/Home/presentation/views/Home_view.dart';
import 'package:booklymvvm/Features/Search/presentation/views/SearchView.dart';
import 'package:booklymvvm/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const String Khomeview = '/homeview';
  static const String Kbookdetailsview = '/bookdetailsview';
  static const String KSplashview = '/';
  static const String Ksearchview = '/searchview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: KSplashview,
      builder: (context, state) => Splashview(),
    ),
    GoRoute(
      path: Khomeview,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: Kbookdetailsview,
      builder: (context, state) => BookdetailsView(),
    ),
    GoRoute(
      path: Ksearchview,
      builder: (context, state) => Searchview(),
    ),
  ]);
}

import 'package:clean_arch_booky_app/Features/home/Presentation/view/Home_view.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/book_detalis_views.dart';
import 'package:clean_arch_booky_app/Features/search/presentation/views/search_view.dart';
import 'package:clean_arch_booky_app/Features/splash/presentation/views/Splash_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kBookDetailsVeiw = '/bookDetailsVeiw';
  static const kHomeView = '/homeView';
  static const kSearchView = '/searchVeiw';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsVeiw,
        builder: (context, state) => BookDetalisViews(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}

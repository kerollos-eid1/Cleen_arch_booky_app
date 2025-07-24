import 'package:clean_arch_booky_app/Features/home/Presentation/view/Home_view.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/book_detalis_views.dart';
import 'package:clean_arch_booky_app/Features/splash/presentation/views/Splash_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kBookDetailsVeiw = '/bookDetailsVeiw';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsVeiw',
        builder: (context, state) => BookDetalisViews(),
      ),
    ],
  );
}

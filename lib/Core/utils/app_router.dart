import 'package:ecommerce_get/Features/home/presentation/views/book_detail_view.dart';
import 'package:ecommerce_get/Features/home/presentation/views/home.dart';
import 'package:go_router/go_router.dart';

import '../../Features/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const KhomeView = '/homeView';
  static const KBookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}

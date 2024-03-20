import 'package:ecommerce_get/Features/home/presentation/views/home.dart';
import 'package:go_router/go_router.dart';

import '../../Features/presentation/views/splash_view.dart';

abstract class AppRouter {
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
    ],
  );
}

import 'package:ecommerce_get/Core/utils/app_router.dart';
import 'package:ecommerce_get/Core/utils/service_locator.dart';
import 'package:ecommerce_get/Features/home/data/reopo/home_repo_implementation.dart';
import 'package:ecommerce_get/Features/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:ecommerce_get/Features/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:ecommerce_get/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..featchFuturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

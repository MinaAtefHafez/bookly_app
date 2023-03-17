


import 'package:bookly_app/features/main/presentation/views/screens/book_details_view.dart';
import 'package:bookly_app/features/main/presentation/views/screens/home_view.dart';
import 'package:bookly_app/features/main/presentation/views/screens/search_view.dart';
import 'package:bookly_app/features/main/presentation/views/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
 static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      
    ),


    GoRoute(
          path: RoutesNames.homeName,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ),


        GoRoute(
          path: RoutesNames.bookDetailsName,
          builder: (BuildContext context, GoRouterState state) {
            return const BookDetailsView();
          },
        ),

        GoRoute(
          path: RoutesNames.searchViewName,
          builder: (BuildContext context, GoRouterState state) {
            return const SearchView();
          },
        ),
  ],
);
}





abstract class RoutesNames {
  static const String homeName = '/homeView' ;
  static const String bookDetailsName = '/bookDetailsName' ;
  static const String searchViewName = '/searchView' ;
}
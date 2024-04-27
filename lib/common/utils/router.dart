import 'package:english_helper/common/main_navigation/main_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: "/home",
      routes: [
        // GoRoute(
        //   name: '/',
        //   path: '/',
        //   builder: (context, state) => const Scaffold(
        //     body: Center(
        //       child: Text('Home'),
        //     ),
        //   ),
        // ),
        GoRoute(
          path: "/:tab(home|discover|calendar)",
          name: MainNavigationScreen.routeName,
          builder: (context, state) {
            final tab = state.params['tab'] ?? 'home';
            return MainNavigationScreen(tab: tab);
          },
        ),
      ],
    );
  },
);

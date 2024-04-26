import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider(
  (ref) {
    return GoRouter(
      routes: [
        GoRoute(
          name: '/',
          path: '/',
          builder: (context, state) => const Scaffold(
            body: Center(
              child: Text('Home'),
            ),
          ),
        )
      ],
    );
  },
);

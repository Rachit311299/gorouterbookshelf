// lib/router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'blocs/authentication_bloc.dart';
import 'blocs/authentication_state.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/detail_page.dart';
import 'models/book.dart';
import 'utils/go_router_refresh_stream.dart';

GoRouter createRouter(AuthenticationBloc authBloc) {
  return GoRouter(
    refreshListenable: GoRouterRefreshStream(authBloc.stream),
    redirect: (context, state) {
      final isLoggedIn = authBloc.state is AuthenticationAuthenticated;
      final isLoggingIn = state.location == '/login';

      if (!isLoggedIn && !isLoggingIn) return '/login';
      if (isLoggedIn && isLoggingIn) return '/';
      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
        routes: [
          GoRoute(
            path: 'detail',
            builder: (context, state) {
              final book = state.extra as Book;
              return DetailPage(book: book);
            },
          ),
        ],
      ),
    ],
  );
}

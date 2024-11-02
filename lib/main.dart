import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_book_app/blocs/authentication_event.dart';
import 'blocs/authentication_bloc.dart';
import 'router.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => AuthenticationBloc()..add(AppStarted()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthenticationBloc>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: createRouter(authBloc),
    );
  }
}

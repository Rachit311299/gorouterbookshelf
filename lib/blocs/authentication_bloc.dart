import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationUninitialized()) {
    on<AppStarted>(_onAppStarted);
    on<LoggedIn>(_onLoggedIn);
    on<LoggedOut>(_onLoggedOut);
  }

  FutureOr<void> _onAppStarted(
      AppStarted event, Emitter<AuthenticationState> emit) async {
    // TODO: Check for persisted authentication state if needed
    emit(AuthenticationUnauthenticated());
  }

  FutureOr<void> _onLoggedIn(
      LoggedIn event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationAuthenticated());
  }

  FutureOr<void> _onLoggedOut(
      LoggedOut event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationUnauthenticated());
  }
}

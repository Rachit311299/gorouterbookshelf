import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationUninitialized extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

class AuthenticationAuthenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

class AuthenticationUnauthenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

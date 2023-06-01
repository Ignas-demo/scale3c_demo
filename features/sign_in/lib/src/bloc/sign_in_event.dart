part of 'sign_in_bloc.dart';

abstract class SignInEvent {}

class SignInWithEmailEvent implements SignInEvent {
  final String email;
  final String password;

  const SignInWithEmailEvent({
    required this.email,
    required this.password,
  });
}

class SignInWithFacebookEvent implements SignInEvent {}

class SignInWithTwitterEvent implements SignInEvent {}

class SignInWithLinkedInEvent implements SignInEvent {}

class RouteToSignUpEvent implements SignInEvent {}

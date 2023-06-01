part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class SignUpWithEmailEvent implements SignUpEvent {
  final String email;
  final String password;

  const SignUpWithEmailEvent({
    required this.email,
    required this.password,
  });
}

class SignUpWithFacebookEvent implements SignUpEvent {}

class SignUpWithTwitterEvent implements SignUpEvent {}

class SignUpWithLinkedInEvent implements SignUpEvent {}

class RouteToSignInEvent implements SignUpEvent {}

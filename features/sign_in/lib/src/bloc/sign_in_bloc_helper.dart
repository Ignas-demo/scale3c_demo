part of 'sign_in_bloc.dart';

extension SignInBlocHelper on SignInBloc {
  void signInWithEmail(String email, String password) =>
      add(SignInWithEmailEvent(email: email, password: password));

  void signInWithFacebook() => add(SignInWithFacebookEvent());
  void signInWithTwitter() => add(SignInWithTwitterEvent());
  void signInWithLinkedIn() => add(SignInWithLinkedInEvent());
  void routeToSignUp() => add(RouteToSignUpEvent());
}

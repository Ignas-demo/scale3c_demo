part of 'sign_up_bloc.dart';

extension SignUpBlocHelper on SignUpBloc {
  void signUpWithEmail(String email, String password) =>
      add(SignUpWithEmailEvent(email: email, password: password));

  void signUpWithFacebook() => add(SignUpWithFacebookEvent());
  void signUpWithTwitter() => add(SignUpWithTwitterEvent());
  void signUpWithLinkedIn() => add(SignUpWithLinkedInEvent());
  void routeToSignIn() => add(RouteToSignInEvent());
}

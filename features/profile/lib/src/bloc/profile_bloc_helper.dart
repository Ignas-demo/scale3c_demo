part of 'profile_bloc.dart';

extension ProfileBlocHelper on ProfileBloc {
  void routeToLogOut() => add(RouteToLogOutEvent());
}

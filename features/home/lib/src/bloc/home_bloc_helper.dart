part of 'home_bloc.dart';

extension HomeBlocHelper on HomeBloc {
  void routeToProfile() => add(RouteToProfileEvent());
}

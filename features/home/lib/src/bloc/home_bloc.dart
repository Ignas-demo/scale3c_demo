import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'home_event.dart';
part 'home_bloc_helper.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AppRouter _appRouter;

  HomeBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(const HomeState()) {
    on<RouteToProfileEvent>(_onRouteToProfile);
  }


  Future<void> _onRouteToProfile(
      RouteToProfileEvent event,
      __,
      ) async {
    try {
      await _appRouter.showLoadingOverlay();
      await _appRouter.goToProfile();
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }
}

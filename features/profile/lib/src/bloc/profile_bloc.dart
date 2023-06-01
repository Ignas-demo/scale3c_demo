import 'dart:async';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:navigation/navigation.dart';

part 'profile_event.dart';
part 'profile_bloc_helper.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AppRouter _appRouter;

  ProfileBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(const ProfileState()) {
    on<RouteToLogOutEvent>(_onRouteToLogOut);
  }


  Future<void> _onRouteToLogOut(
      RouteToLogOutEvent event,
      __,
      ) async {
    try {
      await _appRouter.showLoadingOverlay();
      await _appRouter.goToNonAuthZone();
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }
}

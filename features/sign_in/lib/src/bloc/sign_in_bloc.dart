import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'sign_in_event.dart';
part 'sign_in_bloc_helper.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AppRouter _appRouter;
  final SignInWithEmailUseCase _signInWithEmailUseCase;
  final SignInWithFacebookUseCase _signInWithFacebookUseCase;
  final SignInWithTwitterUseCase _signInWithTwitterUseCase;
  final SignInWithLinkedInUseCase _signInWithLinkedInUseCase;

  SignInBloc({
    required AppRouter appRouter,
    required SignInWithEmailUseCase signInWithEmailUseCase,
    required SignInWithFacebookUseCase signInWithFacebookUseCase,
    required SignInWithTwitterUseCase signInWithTwitterUseCase,
    required SignInWithLinkedInUseCase signInWithLinkedInUseCase,
  })  : _appRouter = appRouter,
        _signInWithEmailUseCase = signInWithEmailUseCase,
        _signInWithFacebookUseCase = signInWithFacebookUseCase,
        _signInWithTwitterUseCase = signInWithTwitterUseCase,
        _signInWithLinkedInUseCase = signInWithLinkedInUseCase,
        super(const SignInState()) {
    on<SignInWithEmailEvent>(_onSignInWithEmail);
    on<SignInWithFacebookEvent>(_onSignInWithFacebook);
    on<SignInWithTwitterEvent>(_onSignInWithTwitter);
    on<SignInWithLinkedInEvent>(_onSignInWithLinkedIn);
    on<RouteToSignUpEvent>(_onRouteToSignUp);
  }

  Future<void> _onSignInWithEmail(
    SignInWithEmailEvent event,
    __,
  ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement email auth logic
      final signInParams =
          SignInParams(email: event.email, password: event.password);
      final isAuthorized = await _signInWithEmailUseCase.execute(signInParams);
      if (isAuthorized) {
        await _appRouter.goToAuthZone();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onSignInWithFacebook(
    SignInWithFacebookEvent event,
    __,
  ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement facebook auth logic
      final isAuthorized = await _signInWithFacebookUseCase.execute();
      if (isAuthorized) {
        await _appRouter.goToAuthZone();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onSignInWithTwitter(
    SignInWithTwitterEvent event,
    __,
  ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement twitter auth logic
      final isAuthorized = await _signInWithTwitterUseCase.execute();
      if (isAuthorized) {
        await _appRouter.goToAuthZone();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onSignInWithLinkedIn(
    SignInWithLinkedInEvent event,
    __,
  ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement linkedin auth logic
      final isAuthorized = await _signInWithLinkedInUseCase.execute();
      if (isAuthorized) {
        await _appRouter.goToAuthZone();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onRouteToSignUp(
    RouteToSignUpEvent event,
    __,
  ) async {
    try {
      await _appRouter.showLoadingOverlay();
      await _appRouter.goToSignUp();
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }
}

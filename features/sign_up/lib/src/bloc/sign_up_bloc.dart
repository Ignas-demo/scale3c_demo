import 'dart:async';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'sign_up_event.dart';
part 'sign_up_bloc_helper.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AppRouter _appRouter;
  final SignInWithEmailUseCase _signInWithEmailUseCase;
  final SignInWithFacebookUseCase _signInWithFacebookUseCase;
  final SignInWithTwitterUseCase _signInWithTwitterUseCase;
  final SignInWithLinkedInUseCase _signInWithLinkedInUseCase;

  SignUpBloc({
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
        super(const SignUpState()) {
    on<SignUpWithEmailEvent>(_onSignUpWithEmail);
    on<SignUpWithFacebookEvent>(_onSignUpWithFacebook);
    on<SignUpWithTwitterEvent>(_onSignUpWithTwitter);
    on<SignUpWithLinkedInEvent>(_onSignUpWithLinkedIn);
    on<RouteToSignInEvent>(_onRouteToSignIn);
  }

  Future<void> _onSignUpWithEmail(
      SignUpWithEmailEvent event,
      __,
      ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement email auth logic
      final signInParams =
      SignInParams(email: event.email, password: event.password);
      final isAuthorized = await _signInWithEmailUseCase.execute(signInParams);
      if (isAuthorized) {
        await _appRouter.pop();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onSignUpWithFacebook(
      SignUpWithFacebookEvent event,
      __,
      ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement facebook auth logic
      final isAuthorized = await _signInWithFacebookUseCase.execute();
      if (isAuthorized) {
        await _appRouter.pop();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onSignUpWithTwitter(
      SignUpWithTwitterEvent event,
      __,
      ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement twitter auth logic
      final isAuthorized = await _signInWithTwitterUseCase.execute();
      if (isAuthorized) {
        await _appRouter.pop();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onSignUpWithLinkedIn(
      SignUpWithLinkedInEvent event,
      __,
      ) async {
    try {
      await _appRouter.showLoadingOverlay();
      //TODO: implement linkedin auth logic
      final isAuthorized = await _signInWithLinkedInUseCase.execute();
      if (isAuthorized) {
        await _appRouter.pop();
      }
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }

  Future<void> _onRouteToSignIn(
      RouteToSignInEvent event,
      __,
      ) async {
    try {
      await _appRouter.showLoadingOverlay();
      await _appRouter.pop();
    } on AppException catch (e) {
      unawaited(_appRouter.showErrorDialog(errorText: e.message));
    } finally {
      _appRouter.hideLoadingOverlay();
    }
  }
}

import '../../common/use_case.dart';
import '../auth.dart';
import '../entities/sign_in_params.dart';

class SignInWithEmailUseCase implements FutureUseCase<SignInParams, bool> {
  final AuthRepository _authRepository;

  const SignInWithEmailUseCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<bool> execute(SignInParams params) {
    return _authRepository.signInWithEmail();
  }
}

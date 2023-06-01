import '../../common/use_case.dart';
import '../auth.dart';

class SignInWithFacebookUseCase implements FutureUseCase<void, void> {
  final AuthRepository _authRepository;

  const SignInWithFacebookUseCase({required AuthRepository authRepository}) : _authRepository = authRepository;

  @override
  Future<bool> execute([void input]) {
    return _authRepository.signInWithFacebook();
  }
}

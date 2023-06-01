import '../../common/use_case.dart';
import '../auth.dart';

class SignInWithTwitterUseCase implements FutureUseCase<void, void> {
  final AuthRepository _authRepository;

  const SignInWithTwitterUseCase({required AuthRepository authRepository}) : _authRepository = authRepository;

  @override
  Future<bool> execute([void input]) {
    return _authRepository.signInWithTwitter();
  }
}

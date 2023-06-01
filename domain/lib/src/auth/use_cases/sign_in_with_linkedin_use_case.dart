import '../../common/use_case.dart';
import '../auth.dart';

class SignInWithLinkedInUseCase implements FutureUseCase<void, void> {
  final AuthRepository _authRepository;

  const SignInWithLinkedInUseCase({required AuthRepository authRepository}) : _authRepository = authRepository;

  @override
  Future<bool> execute([void input]) {
    return _authRepository.signInWithLinkedIn();
  }
}

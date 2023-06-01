import '../../common/use_case.dart';
import '../auth.dart';

class SignOutUseCase implements FutureUseCase<void, void> {
  final AuthRepository _authRepository;

  const SignOutUseCase({required AuthRepository authRepository}) : _authRepository = authRepository;

  @override
  Future<void> execute([void input]) {
    return _authRepository.signOut();
  }
}

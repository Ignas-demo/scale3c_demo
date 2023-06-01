import 'package:domain/src/auth/entities/sign_up_params.dart';

import '../../common/use_case.dart';
import '../auth.dart';

class SignUpUseCase implements FutureUseCase<SignUpParams, void> {
  final AuthRepository _authRepository;

  const SignUpUseCase({required AuthRepository authRepository}) : _authRepository = authRepository;

  @override
  Future<bool> execute(SignUpParams params) {
    return _authRepository.signUp();
  }
}
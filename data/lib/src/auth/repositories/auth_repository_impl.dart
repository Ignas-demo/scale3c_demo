import 'package:domain/domain.dart';

import '../providers/auth_provider.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthProvider _authProvider;

  const AuthRepositoryImpl({
    required AuthProvider authProvider,
  }) : _authProvider = authProvider;

  @override
  Future<bool> signInWithEmail() {
    return _authProvider.signIn();
  }

  @override
  Future<bool> signInWithFacebook() {
    return _authProvider.signIn();
  }

  @override
  Future<bool> signInWithTwitter() {
    return _authProvider.signIn();
  }

  @override
  Future<bool> signInWithLinkedIn() {
    return _authProvider.signIn();
  }

  @override
  Future<void> signOut() {
    return _authProvider.signOut();
  }

  @override
  Future<bool> signUp() {
    return _authProvider.signUp();
  }
}

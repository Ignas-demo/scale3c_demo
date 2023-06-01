class AuthProvider {
  AuthProvider();

  Future<bool> signIn() async {
    return true;
  }

  Future<bool> signUp() async {
    return true;
  }

  Future<void> signOut() async {}
}

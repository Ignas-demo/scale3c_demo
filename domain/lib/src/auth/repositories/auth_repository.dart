abstract class AuthRepository {
  Future<bool> signInWithEmail();

  Future<bool> signInWithTwitter();

  Future<bool> signInWithFacebook();

  Future<bool> signInWithLinkedIn();

  Future<bool> signUp();

  Future<void> signOut();
}

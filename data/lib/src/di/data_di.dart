import '../auth/auth_di.dart';

class DataDI {
  static void setupUnauthZoneDependencies() {
    AuthDI.setupDependencies();
  }
}

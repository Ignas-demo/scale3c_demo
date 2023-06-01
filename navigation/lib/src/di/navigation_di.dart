import 'package:core/core.dart';

import '../../navigation.dart';

class NavigationDI {
  static void setupDependencies() {
    getIt.registerSingleton(AppRouter());
  }
}

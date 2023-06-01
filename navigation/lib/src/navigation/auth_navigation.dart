import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:profile/profile.dart';
import '../../navigation.dart';

extension AuthNavigation on AppRouter {
  Future<void> goToAuthZone() async {
    getIt.pushNewScope(scopeName: authScope);
    return goToHomeScreen();
  }

  Future<dynamic> goToSignUp() async {
    return push(const SignUpRoute());
  }

  Future<void> goToHomeScreen() async {
    return replaceAll([const HomeRoute()]);
  }

  Future<dynamic> goToProfile() async {
    return push(const ProfileRoute());
  }

  Future<void> goToNonAuthZone() async {
    await getIt.popScope();
    return replaceAll([const SignInRoute()]);
  }
}

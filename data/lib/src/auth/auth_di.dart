import 'package:core/core.dart';
import 'package:domain/domain.dart';

import 'providers/auth_provider.dart';
import 'repositories/auth_repository_impl.dart';

class AuthDI {
  static void setupDependencies() {
    getIt.registerLazySingleton(
      () => AuthProvider(),
    );

    getIt.registerLazySingleton(
      () => AuthRepositoryImpl(
        authProvider: getIt<AuthProvider>(),
      ),
    );

    getIt.registerFactory(
      () => SignInWithEmailUseCase(
        authRepository: getIt<AuthRepositoryImpl>(),
      ),
    );
    getIt.registerFactory(
      () => SignInWithTwitterUseCase(
        authRepository: getIt<AuthRepositoryImpl>(),
      ),
    );
    getIt.registerFactory(
      () => SignInWithFacebookUseCase(
        authRepository: getIt<AuthRepositoryImpl>(),
      ),
    );

    getIt.registerFactory(
      () => SignInWithLinkedInUseCase(
        authRepository: getIt<AuthRepositoryImpl>(),
      ),
    );

    getIt.registerFactory(
      () => SignOutUseCase(
        authRepository: getIt<AuthRepositoryImpl>(),
      ),
    );

    getIt.registerFactory(
      () => SignUpUseCase(
        authRepository: getIt<AuthRepositoryImpl>(),
      ),
    );
  }
}

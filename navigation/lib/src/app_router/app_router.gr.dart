// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    LoadingOverlayRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const LoadingOverlayScreen(),
        customRouteBuilder: RouteBuilder.modalDialog,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppAlertDialogRoute.name: (routeData) {
      final args = routeData.argsAs<AppAlertDialogRouteArgs>(
          orElse: () => const AppAlertDialogRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: AppAlertDialog(
          key: args.key,
          title: args.title,
          message: args.message,
          content: args.content,
          canPop: args.canPop,
          actions: args.actions,
        ),
        customRouteBuilder: RouteBuilder.modalDialog,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ErrorRouteArgs>(
          orElse: () => const ErrorRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ErrorScreen(
          key: args.key,
          errorText: args.errorText,
          onButtonPressed: args.onButtonPressed,
          buttonTitle: args.buttonTitle,
          errorDescription: args.errorDescription,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-screen',
        ),
        RouteConfig(
          LoadingOverlayRoute.name,
          path: '/loading-overlay-screen',
        ),
        RouteConfig(
          AppAlertDialogRoute.name,
          path: '/app-alert-dialog',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home-screen',
        ),
        RouteConfig(
          ProfileRoute.name,
          path: '/profile-screen',
        ),
        RouteConfig(
          ErrorRoute.name,
          path: '/error-screen',
        ),
      ];
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-screen',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [LoadingOverlayScreen]
class LoadingOverlayRoute extends PageRouteInfo<void> {
  const LoadingOverlayRoute()
      : super(
          LoadingOverlayRoute.name,
          path: '/loading-overlay-screen',
        );

  static const String name = 'LoadingOverlayRoute';
}

/// generated route for
/// [AppAlertDialog]
class AppAlertDialogRoute extends PageRouteInfo<AppAlertDialogRouteArgs> {
  AppAlertDialogRoute({
    Key? key,
    String? title,
    String? message,
    Widget? content,
    bool canPop = false,
    List<Widget>? actions,
  }) : super(
          AppAlertDialogRoute.name,
          path: '/app-alert-dialog',
          args: AppAlertDialogRouteArgs(
            key: key,
            title: title,
            message: message,
            content: content,
            canPop: canPop,
            actions: actions,
          ),
        );

  static const String name = 'AppAlertDialogRoute';
}

class AppAlertDialogRouteArgs {
  const AppAlertDialogRouteArgs({
    this.key,
    this.title,
    this.message,
    this.content,
    this.canPop = false,
    this.actions,
  });

  final Key? key;

  final String? title;

  final String? message;

  final Widget? content;

  final bool canPop;

  final List<Widget>? actions;

  @override
  String toString() {
    return 'AppAlertDialogRouteArgs{key: $key, title: $title, message: $message, content: $content, canPop: $canPop, actions: $actions}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [ErrorScreen]
class ErrorRoute extends PageRouteInfo<ErrorRouteArgs> {
  ErrorRoute({
    Key? key,
    String? errorText,
    void Function()? onButtonPressed,
    String? buttonTitle,
    String? errorDescription,
  }) : super(
          ErrorRoute.name,
          path: '/error-screen',
          args: ErrorRouteArgs(
            key: key,
            errorText: errorText,
            onButtonPressed: onButtonPressed,
            buttonTitle: buttonTitle,
            errorDescription: errorDescription,
          ),
        );

  static const String name = 'ErrorRoute';
}

class ErrorRouteArgs {
  const ErrorRouteArgs({
    this.key,
    this.errorText,
    this.onButtonPressed,
    this.buttonTitle,
    this.errorDescription,
  });

  final Key? key;

  final String? errorText;

  final void Function()? onButtonPressed;

  final String? buttonTitle;

  final String? errorDescription;

  @override
  String toString() {
    return 'ErrorRouteArgs{key: $key, errorText: $errorText, onButtonPressed: $onButtonPressed, buttonTitle: $buttonTitle, errorDescription: $errorDescription}';
  }
}

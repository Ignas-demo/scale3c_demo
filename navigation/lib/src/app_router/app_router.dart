import 'package:auto_route/auto_route.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home/home.dart';
import 'package:profile/profile.dart';
import 'package:sign_in/sign_in.dart';
import 'package:sign_up/sign_up.dart';

import 'route_builder.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
    AutoRoute(page: SignUpScreen),
    CustomRoute(
      page: LoadingOverlayScreen,
      customRouteBuilder: RouteBuilder.modalDialog,
    ),
    CustomRoute(
      page: AppAlertDialog,
      name: 'AppAlertDialogRoute',
      customRouteBuilder: RouteBuilder.modalDialog,
    ),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: ProfileScreen),
    AutoRoute(page: ErrorScreen),
  ],
)
class AppRouter extends _$AppRouter {}

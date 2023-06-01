import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class Scale3cApp extends StatelessWidget {
  const Scale3cApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = darkTheme;
    SystemUiOverlayHelper.updateStatusBarIconsStyle(
      brightness: theme.brightness,
    );

    final appRouter = getIt<AppRouter>();

    return EasyLocalization(
      supportedLocales: AppLocalization.supportedLocales,
      path: AppLocalization.langsFolderPath,
      fallbackLocale: AppLocalization.fallbackLocale,
      child: Builder(builder: (context) {
        return MaterialApp.router(
          theme: theme,
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

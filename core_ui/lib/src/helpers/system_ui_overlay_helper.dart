import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUiOverlayHelper {
  static const SystemUiOverlayStyle lightThemeStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemStatusBarContrastEnforced: false,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  );

  static const SystemUiOverlayStyle darkThemeStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemStatusBarContrastEnforced: false,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  );

  static void updateStatusBarIconsStyle({required Brightness brightness}) {
    if (brightness == Brightness.dark) {
      setDarkThemeStyle();
    } else {
      setLightThemeStyle();
    }
  }

  static void setLightThemeStyle() {
    SystemChrome.setSystemUIOverlayStyle(lightThemeStyle);
  }

  static void setDarkThemeStyle() {
    SystemChrome.setSystemUIOverlayStyle(darkThemeStyle);
  }
}

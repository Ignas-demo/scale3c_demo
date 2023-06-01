import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

final darkTheme = _buildThemeData(
  base: ThemeData.dark(),
  colors: const DarkColors(),
);

final lightTheme = _buildThemeData(
  base: ThemeData.light(),
  colors: const LightColors(),
);

ThemeData _buildThemeData({
  required ThemeData base,
  required AppColors colors,
}) {
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      secondary: colors.primary,
    ),
    scaffoldBackgroundColor: colors.primary,
    shadowColor: colors.shadow,
    cupertinoOverrideTheme: _buildCupertinoTheme(colors),
    progressIndicatorTheme: _buildProgressIndicatorTheme(colors),
    dialogTheme: _buildDialogTheme(colors),
  );
}

CupertinoThemeData _buildCupertinoTheme(AppColors colors) {
  return CupertinoThemeData(
    primaryColor: colors.accent,
  );
}

ProgressIndicatorThemeData _buildProgressIndicatorTheme(AppColors colors) {
  return ProgressIndicatorThemeData(
    color: colors.primary,
    circularTrackColor: colors.accent,
  );
}

DialogTheme _buildDialogTheme(AppColors colors) {
  return DialogTheme(
    backgroundColor: colors.primary,
    titleTextStyle: AppFonts.robotoBold16.copyWith(
      color: colors.onPrimary,
    ),
    contentTextStyle: AppFonts.robotoBold16.copyWith(
      color: colors.onSecondary,
    ),
  );
}

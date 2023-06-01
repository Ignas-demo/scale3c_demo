import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors();

  factory AppColors.of(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return brightness == Brightness.light
        ? const LightColors()
        : const DarkColors();
  }

  Color get primary;

  Color get secondary;

  Color get tertiary;

  Color get primaryTextColor;

  Color get secondaryTextColor;

  Color get inputTextColor;

  Color get informationTextColor;

  Color get outlinedBorderColor;

  Color get actionButtonColor;

  Color get inputColor;

  Color get onPrimary;

  Color get onSecondary;

  Color get onAccent;

  Color get shadow;

  Color get lightGrey;

  Color get barrier;

  Color get shimmer;

  Color get red;

  Color get orange;

  Color get yellow;

  Color get green;

  Color get blue;

  Color get violet;

  Color get white;

  Color get black;

  Color get redDisabled;

  Color get orangeDisabled;

  Color get yellowDisabled;

  Color get greenDisabled;

  Color get blueDisabled;

  Color get violetDisabled;

  Color get transparent;

  List<Color> get listItemGradient;

  List<Color> get shimmerGradient => [primary, shimmer, primary];

  Color get accent => green;

  Color get accentDisabled => greenDisabled;

  Color get accentShadow => greenDisabled;

  Color get error => red;

  Color get onAccentDisabled => tertiary;
}

class LightColors extends AppColors {
  const LightColors();

  @override
  Color get primary => const Color.fromRGBO(242, 242, 242, 1);

  @override
  Color get secondary => const Color.fromRGBO(82, 84, 100, 1);

  @override
  Color get tertiary => const Color.fromRGBO(255, 177, 157, 1);

  @override
  Color get primaryTextColor => const Color.fromRGBO(82, 84, 100, 1);

  @override
  Color get secondaryTextColor => const Color.fromRGBO(131, 131, 145, 1);

  @override
  Color get inputTextColor => const Color.fromRGBO(176, 176, 195, 1);

  @override
  Color get informationTextColor => const Color.fromRGBO(255, 255, 255, 0.38);

  @override
  Color get outlinedBorderColor => const Color.fromRGBO(226, 226, 224, 1);

  @override
  Color get actionButtonColor => const Color.fromRGBO(32, 195, 175, 1);

  @override
  Color get inputColor => const Color.fromRGBO(247, 247, 247, 1);

  @override
  Color get onPrimary => const Color(0xFFFFFFFF);

  @override
  Color get onSecondary => const Color(0xFF96A7AF);

  @override
  Color get onAccent => const Color(0xFF30444E);

  @override
  Color get shadow => const Color(0xFF19282F);

  @override
  Color get lightGrey => const Color(0xFF96A7AF);

  @override
  Color get barrier => const Color(0x80000000);

  @override
  Color get shimmer => const Color(0xFF8C9396);

  @override
  List<Color> get listItemGradient => const [
        Color(0xB330444E),
        Color(0x0030444E),
      ];

  @override
  Color get red => const Color(0xFFFF565E);

  @override
  Color get orange => const Color(0xFFFF974A);

  @override
  Color get yellow => const Color(0xFFFFC542);

  @override
  Color get green => const Color(0xFF3ED598);

  @override
  Color get blue => const Color(0xFF0062FF);

  @override
  Color get violet => const Color(0xFF755FE2);

  @override
  Color get redDisabled => const Color(0xFF623A42);

  @override
  Color get orangeDisabled => const Color(0xFF624D3B);

  @override
  Color get yellowDisabled => const Color(0xFF625B39);

  @override
  Color get greenDisabled => const Color(0xFF286053);

  @override
  Color get blueDisabled => const Color(0xFF163E72);

  @override
  Color get violetDisabled => const Color(0xFF393D69);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get transparent => const Color(0x00FFFFFF);
}

class DarkColors extends AppColors {
  const DarkColors();

  @override
  Color get primary => const Color.fromRGBO(242, 242, 242, 1);

  @override
  Color get secondary => const Color.fromRGBO(82, 84, 100, 1);

  @override
  Color get tertiary => const Color.fromRGBO(255, 177, 157, 1);

  @override
  Color get primaryTextColor => const Color.fromRGBO(82, 84, 100, 1);

  @override
  Color get secondaryTextColor => const Color.fromRGBO(131, 131, 145, 1);

  @override
  Color get inputTextColor => const Color.fromRGBO(176, 176, 195, 1);

  @override
  Color get informationTextColor => const Color.fromRGBO(255, 255, 255, 0.38);

  @override
  Color get outlinedBorderColor => const Color.fromRGBO(226, 226, 224, 1);

  @override
  Color get actionButtonColor => const Color.fromRGBO(32, 195, 175, 1);

  @override
  Color get inputColor => const Color.fromRGBO(247, 247, 247, 1);

  @override
  Color get onPrimary => const Color(0xFFFFFFFF);

  @override
  Color get onSecondary => const Color(0xFF96A7AF);

  @override
  Color get onAccent => const Color(0xFF30444E);

  @override
  Color get shadow => const Color(0xFF19282F);

  @override
  Color get lightGrey => const Color(0xFF96A7AF);

  @override
  Color get barrier => const Color(0x80000000);

  @override
  Color get shimmer => const Color(0xFF8C9396);

  @override
  List<Color> get listItemGradient => const [
        Color(0xB330444E),
        Color(0x0030444E),
      ];

  @override
  Color get red => const Color(0xFFFF565E);

  @override
  Color get orange => const Color(0xFFFF974A);

  @override
  Color get yellow => const Color(0xFFFFC542);

  @override
  Color get green => const Color(0xFF3ED598);

  @override
  Color get blue => const Color(0xFF0062FF);

  @override
  Color get violet => const Color(0xFF755FE2);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get redDisabled => const Color(0xFF623A42);

  @override
  Color get orangeDisabled => const Color(0xFF624D3B);

  @override
  Color get yellowDisabled => const Color(0xFF625B39);

  @override
  Color get greenDisabled => const Color(0xFF286053);

  @override
  Color get blueDisabled => const Color(0xFF163E72);

  @override
  Color get violetDisabled => const Color(0xFF393D69);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get transparent => const Color(0x00FFFFFF);
}

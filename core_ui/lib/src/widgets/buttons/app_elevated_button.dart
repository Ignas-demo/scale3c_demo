import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppElevatedButton extends ElevatedButton {
  static const smallButtonSize = Size(40, 40);

  AppElevatedButton({
    required VoidCallback? onPressed,
    String? title,
    String? iconPath,
    ButtonStyle? style,
  }) : super(
    onPressed: onPressed,
    style: style,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (iconPath != null)
          Builder(
            builder: (context) {
              final colors = AppColors.of(context);

              return SvgPicture.asset(
                iconPath,
                color: onPressed != null
                    ? colors.onAccent
                    : colors.onAccentDisabled,
              );
            },
          ),
        if (iconPath != null && title != null)
          const SizedBox(width: 8),
        if (title != null) Text(title),
      ],
    ),
  );

  AppElevatedButton.small({
    required VoidCallback? onPressed,
    String? title,
    String? iconPath,
  }) : this.new(
    onPressed: onPressed,
    title: title,
    iconPath: iconPath,
    style: ElevatedButton.styleFrom(
      minimumSize: smallButtonSize,
      padding: const EdgeInsets.all(8),
    ),
  );
}

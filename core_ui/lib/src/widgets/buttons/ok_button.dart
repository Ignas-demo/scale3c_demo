import 'package:core/core.dart';
import 'package:flutter/material.dart';

class OkButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const OkButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(LocaleKeys.common_buttons_ok.tr()),
    );
  }
}

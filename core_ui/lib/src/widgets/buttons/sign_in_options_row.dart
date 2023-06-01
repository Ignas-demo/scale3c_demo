import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class SignInOptionsRow extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final VoidCallback? onFacebookPressed;
  final VoidCallback? onTwitterPressed;
  final VoidCallback? onLinkedinPressed;

  const SignInOptionsRow({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.onFacebookPressed,
    required this.onTwitterPressed,
    required this.onLinkedinPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        OutlinedActionButton(
          onPressed: onFacebookPressed,
          height: screenHeight * 0.074,
          width: screenWidth * 0.267,
          child: SvgPicture.asset(
            AppIcons.facebook,
            height: screenHeight * 0.0184,
            width: screenWidth * 0.0187,
          ),
        ),
        OutlinedActionButton(
          onPressed: onTwitterPressed,
          height: screenHeight * 0.074,
          width: screenWidth * 0.267,
          child: SvgPicture.asset(
            AppIcons.twitter,
            height: screenHeight * 0.0197,
            width: screenWidth * 0.0506,
          ),
        ),
        OutlinedActionButton(
          onPressed: onLinkedinPressed,
          height: screenHeight * 0.074,
          width: screenWidth * 0.267,
          child: SvgPicture.asset(
            AppIcons.linkedIn,
            height: screenHeight * 0.0197,
            width: screenWidth * 0.0426,
          ),
        ),
      ],
    );
  }
}

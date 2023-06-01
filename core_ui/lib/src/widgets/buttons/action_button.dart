import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final VoidCallback? onPressed;

  const ActionButton({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: height,
            width: width,
            color: AppColors.of(context).actionButtonColor,
          ),
          child,
        ],
      ),
    );
  }
}

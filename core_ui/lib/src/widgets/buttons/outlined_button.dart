import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class OutlinedActionButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final VoidCallback? onPressed;

  const OutlinedActionButton({
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
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.of(context).outlinedBorderColor, width: 1),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class ShimmerLoadingPlaceholder extends StatefulWidget {
  const ShimmerLoadingPlaceholder({
    super.key,
    this.height,
    this.width,
    this.borderRadius,
  });

  final double? height;
  final double? width;
  final double? borderRadius;

  @override
  State<ShimmerLoadingPlaceholder> createState() =>
      _ShimmerLoadingPlaceholderState();
}

class _ShimmerLoadingPlaceholderState extends State<ShimmerLoadingPlaceholder>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;

  static const Duration _animationDuration = Duration(milliseconds: 1500);
  static const List<double> _gradientStops = [0.0, 0.5, 1.0];
  static const double _animationMinValue = -2;
  static const double _animationMaxValue = 2;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(
        min: _animationMinValue,
        max: _animationMaxValue,
        period: _animationDuration,
      );
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shimmerController,
      builder: (BuildContext context, Widget? child) {
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            return LinearGradient(
              transform: _SlidingGradientTransform(
                slidePercent: _shimmerController.value,
              ),
              colors: AppColors.of(context).shimmerGradient,
              stops: _gradientStops,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ).createShader(bounds);
          },
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(widget.borderRadius ?? 0.0),
              ),
              color: AppColors.of(context).primary,
            ),
          ),
        );
      },
    );
  }
}

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform({
    required this.slidePercent,
  });

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}

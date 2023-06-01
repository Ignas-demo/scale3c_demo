import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class BoxItem extends StatelessWidget {
  final Widget icon;
  final double height;
  final double width;
  final String title;
  final String value;

  const BoxItem({
    super.key,
    required this.icon,
    required this.height,
    required this.width,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: width * 0.08),
      decoration: BoxDecoration(
        color: AppColors.of(context).secondary,
        border: Border.all(
            width: 1,
            color: AppColors.of(context).outlinedBorderColor.withOpacity(0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          icon,
          SizedBox(width: width * 0.079),
          Container(
            width: 1,
            height: height * 0.525,
            color: AppColors.of(context).outlinedBorderColor.withOpacity(0.3),
          ),
          SizedBox(
            width: width * 0.07,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: AppFonts.robotoMedium14.copyWith(
                    color: AppColors.of(context).white.withOpacity(0.4)),
              ),
              SizedBox(height: height * 0.03125),
              Text(
                value,
                style: AppFonts.robotoMedium16Alternative
                    .copyWith(color: AppColors.of(context).white),
              )
            ],
          ),
        ],
      ),
    );
  }
}

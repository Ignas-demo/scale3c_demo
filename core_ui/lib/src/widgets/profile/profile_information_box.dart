import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class ProfileInformationBox extends StatelessWidget {
  final double height;
  final double width;
  final String phoneNumber;
  final String email;
  final String completedProjects;

  const ProfileInformationBox({
    super.key,
    required this.height,
    required this.width,
    required this.phoneNumber,
    required this.email,
    required this.completedProjects,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: AppColors.of(context).secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          BoxItem(
            icon: SvgPicture.asset(
              AppIcons.phone,
              height: height * 0.0625,
              width: width * 0.0587,
            ),
            height: height * 0.227,
            width: width * 0.84,
            title: LocaleKeys.profile_phone_number.tr(),
            value: phoneNumber,
          ),
          SizedBox(height: height * 0.0454),
          BoxItem(
            icon: SvgPicture.asset(
              AppIcons.email,
              height: height * 0.0625,
              width: width * 0.0587,
            ),
            height: height * 0.227,
            width: width * 0.84,
            title: LocaleKeys.profile_email.tr(),
            value: email,
          ),
          SizedBox(height: height * 0.0454),
          BoxItem(
            icon: SvgPicture.asset(
              AppIcons.projects,
              height: height * 0.0625,
              width: width * 0.0587,
            ),
            height: height * 0.227,
            width: width * 0.84,
            title: LocaleKeys.profile_projects.tr(),
            value: completedProjects,
          )
        ],
      ),
    );
  }
}

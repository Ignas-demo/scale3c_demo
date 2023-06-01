import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        appRouter: getIt<AppRouter>(),
      ),
      child: const _ProfileScreen(),
    );
  }
}

class _ProfileScreen extends StatefulWidget {
  const _ProfileScreen();

  @override
  State<_ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<_ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      color: AppColors.of(context).white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.08,
              top: screenWidth * 0.08,
              right: screenWidth * 0.08,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.035),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const AppBackButton(),
                      SvgPicture.asset(
                        AppIcons.menu,
                        height: 8,
                        width: 18,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.074),
                  Image.asset(
                    AppImages.profileImg,
                    height: screenHeight * 0.154,
                    width: screenWidth * 0.33,
                  ),
                  SizedBox(height: screenHeight * 0.049),
                  Text(
                    'Username',
                    style: AppFonts.ubuntuMedium24
                        .copyWith(color: AppColors.of(context).secondary),
                  ),
                  SizedBox(
                    height: screenHeight * 0.0123,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New York',
                        style: AppFonts.robotoMedium16Alternative.copyWith(
                            color: AppColors.of(context).secondaryTextColor),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      SvgPicture.asset(AppIcons.profileDivider),
                      SizedBox(width: screenWidth * 0.04),
                      Text(
                        'ID: 112061',
                        style: AppFonts.robotoMedium16Alternative.copyWith(
                            color: AppColors.of(context).secondaryTextColor),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.021),
                  Text(
                    LocaleKeys.profile_edit.tr(),
                    style: AppFonts.robotoBold16.copyWith(
                      color: AppColors.of(context).tertiary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    children: <Widget>[
                      OutlinedActionButton(
                        height: screenHeight * 0.073,
                        width: screenWidth * 0.4,
                        child: Text(
                          LocaleKeys.profile_about_me.tr(),
                          style: AppFonts.robotoBold16Button.copyWith(
                              color: AppColors.of(context).secondaryTextColor),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      ActionButton(
                        height: screenHeight * 0.073,
                        width: screenWidth * 0.4,
                        child: Text(
                          LocaleKeys.profile_log_out.tr(),
                          style: AppFonts.robotoBold16Button
                              .copyWith(color: AppColors.of(context).white),
                        ),
                        onPressed: () {

                          context.read<ProfileBloc>().routeToLogOut();
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          ProfileInformationBox(
              height: screenHeight * 0.4,
              width: screenWidth,
              phoneNumber: "+3788888888",
              email: "user@gmail.com",
              completedProjects: "248")
        ],
      ),
    );
  }
}

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'bloc/sign_in_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(
        appRouter: getIt<AppRouter>(),
        signInWithEmailUseCase: getIt<SignInWithEmailUseCase>(),
        signInWithFacebookUseCase: getIt<SignInWithFacebookUseCase>(),
        signInWithTwitterUseCase: getIt<SignInWithTwitterUseCase>(),
        signInWithLinkedInUseCase: getIt<SignInWithLinkedInUseCase>(),
      ),
      child: const _SignInScreen(),
    );
  }
}

class _SignInScreen extends StatefulWidget {
  const _SignInScreen();

  @override
  State<_SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<_SignInScreen> {
  String username = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  String? validator(String? fieldContent) =>
      (fieldContent == null || fieldContent.isEmpty)
          ? LocaleKeys.sign_in_error.tr()
          : null;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      color: AppColors.of(context).white,
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.08),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: screenHeight * 0.035),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Text(
                      LocaleKeys.sign_in_sign_in.tr(),
                      style: AppFonts.robotoBold18.copyWith(
                          color: AppColors.of(context).primaryTextColor),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        AppIcons.menu,
                        height: 8,
                        width: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.07),
                Image.asset(
                  AppImages.signInIllustration,
                  height: screenHeight * 0.1822,
                  width: screenWidth * 0.27,
                ),
                SizedBox(height: screenHeight * 0.0616),
                InputField(
                  height: screenHeight * 0.074,
                  width: screenWidth * 0.84,
                  isObscure: false,
                  hint: LocaleKeys.sign_in_username.tr(),
                  onChanged: (String value) {
                    setState(() {
                      username = value;
                    });
                  },
                  validator: validator,
                ),
                SizedBox(height: screenHeight * 0.012),
                InputField(
                  height: screenHeight * 0.074,
                  width: screenWidth * 0.84,
                  isObscure: true,
                  hint: LocaleKeys.sign_in_password.tr(),
                  onChanged: (String value) {
                    setState(() {
                      password = value;
                    });
                  },
                  validator: validator,
                ),
                SizedBox(height: screenHeight * 0.0172),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    LocaleKeys.sign_in_forgot_pass.tr(),
                    style: AppFonts.robotoBold16.copyWith(
                        color: AppColors.of(context).secondaryTextColor),
                  ),
                ),
                SizedBox(height: screenHeight * 0.0616),
                ActionButton(
                    height: screenHeight * 0.074,
                    width: screenWidth * 0.84,
                    child: Text(
                      LocaleKeys.sign_in_login.tr(),
                      style: AppFonts.robotoBold16
                          .copyWith(color: AppColors.of(context).white),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<SignInBloc>()
                            .signInWithEmail(username, password);
                      }
                    }),
                SizedBox(height: screenHeight * 0.0197),
                Text(
                  LocaleKeys.sign_in_or.tr(),
                  style: AppFonts.robotoBold16.copyWith(
                      color: AppColors.of(context).secondaryTextColor),
                ),
                SizedBox(height: screenHeight * 0.0197),
                SignInOptionsRow(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  onFacebookPressed: () {
                    context.read<SignInBloc>().signInWithFacebook();
                  },
                  onTwitterPressed: () {
                    context.read<SignInBloc>().signInWithTwitter();
                  },
                  onLinkedinPressed: () {
                    context.read<SignInBloc>().signInWithLinkedIn();
                  },
                ),
                SizedBox(height: screenHeight * 0.063),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      LocaleKeys.sign_in_dont_have_account.tr(),
                      style: AppFonts.robotoMedium16.copyWith(
                          color: AppColors.of(context).secondaryTextColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<SignInBloc>().routeToSignUp();
                      },
                      child: Text(
                        LocaleKeys.sign_in_sign_up.tr(),
                        style: AppFonts.robotoBold16.copyWith(
                          color: AppColors.of(context).tertiary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

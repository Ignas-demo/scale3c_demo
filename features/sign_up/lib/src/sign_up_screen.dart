import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'bloc/sign_up_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(
        appRouter: getIt<AppRouter>(),
        signInWithEmailUseCase: getIt<SignInWithEmailUseCase>(),
        signInWithFacebookUseCase: getIt<SignInWithFacebookUseCase>(),
        signInWithTwitterUseCase: getIt<SignInWithTwitterUseCase>(),
        signInWithLinkedInUseCase: getIt<SignInWithLinkedInUseCase>(),
      ),
      child: const _SignUpScreen(),
    );
  }
}

class _SignUpScreen extends StatefulWidget {
  const _SignUpScreen();

  @override
  State<_SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<_SignUpScreen> {
  String email = '';
  String password = '';
  String repeatPassword = '';
  final _formKey = GlobalKey<FormState>();

  String? validator(String? fieldContent) =>
      (fieldContent == null || fieldContent.isEmpty)
          ? LocaleKeys.sign_up_field_error.tr()
          : null;

  String? passwordValidator(String? fieldContent) =>
      (fieldContent == null || fieldContent.isEmpty)
          ? LocaleKeys.sign_up_field_error.tr()
          : (password != repeatPassword)
              ? LocaleKeys.sign_up_password_error.tr()
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: AppBackButton(),
                    ),
                    Text(
                      LocaleKeys.sign_up_sign_up.tr(),
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
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.07),
                Image.asset(
                  AppImages.signUpIllustration,
                  height: screenHeight * 0.173,
                  width: screenWidth * 0.368,
                ),
                SizedBox(height: screenHeight * 0.055),
                InputField(
                  height: screenHeight * 0.074,
                  width: screenWidth * 0.84,
                  isObscure: false,
                  hint: LocaleKeys.sign_up_email.tr(),
                  onChanged: (String value) {
                    setState(() {
                      email = value;
                    });
                  },
                  validator: validator,
                ),
                SizedBox(height: screenHeight * 0.012),
                InputField(
                  height: screenHeight * 0.074,
                  width: screenWidth * 0.84,
                  isObscure: true,
                  hint: LocaleKeys.sign_up_pass.tr(),
                  onChanged: (String value) {
                    setState(() {
                      password = value;
                    });
                  },
                  validator: passwordValidator,
                ),
                SizedBox(height: screenHeight * 0.012),
                InputField(
                  height: screenHeight * 0.074,
                  width: screenWidth * 0.84,
                  isObscure: true,
                  hint: LocaleKeys.sign_up_repeat_pass.tr(),
                  onChanged: (String value) {
                    setState(() {
                      repeatPassword = value;
                    });
                  },
                  validator: passwordValidator,
                ),
                SizedBox(height: screenHeight * 0.0197),
                ActionButton(
                    height: screenHeight * 0.074,
                    width: screenWidth * 0.84,
                    child: Text(
                      LocaleKeys.sign_up_sign_up.tr(),
                      style: AppFonts.robotoBold16
                          .copyWith(color: AppColors.of(context).white),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<SignUpBloc>()
                            .signUpWithEmail(email, password);
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
                    context.read<SignUpBloc>().signUpWithFacebook();
                  },
                  onTwitterPressed: () {
                    context.read<SignUpBloc>().signUpWithTwitter();
                  },
                  onLinkedinPressed: () {
                    context.read<SignUpBloc>().signUpWithLinkedIn();
                  },
                ),
                SizedBox(height: screenHeight * 0.063),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      LocaleKeys.sign_up_have_account.tr(),
                      style: AppFonts.robotoMedium16.copyWith(
                          color: AppColors.of(context).secondaryTextColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<SignUpBloc>().routeToSignIn();
                      },
                      child: Text(
                        LocaleKeys.sign_in_sign_in.tr(),
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

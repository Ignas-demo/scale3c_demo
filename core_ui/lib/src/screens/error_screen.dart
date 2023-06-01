import 'package:core/core.dart';
import 'package:flutter/material.dart';
import '../../../core_ui.dart';

class ErrorScreen extends StatelessWidget {
  final String? errorText;
  final VoidCallback? onButtonPressed;
  final String? buttonTitle;
  final String? errorDescription;

  bool get _isButtonNeed => buttonTitle != null;

  const ErrorScreen({
    super.key,
    this.errorText,
    this.onButtonPressed,
    this.buttonTitle,
    this.errorDescription,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppFonts.robotoMedium16.copyWith(
      color: AppColors.of(context).white,
    );

    return AppScaffold(
      useSafeArea: false,
      title: '${LocaleKeys.common_messages_oops.tr()}.....',
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.of(context).red,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      errorText ??
                          LocaleKeys.common_messages_unknown_error.tr(),
                      style: textStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            errorDescription ?? '',
                            style: textStyle,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        const Flexible(
                          child: Icon(Icons.error),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

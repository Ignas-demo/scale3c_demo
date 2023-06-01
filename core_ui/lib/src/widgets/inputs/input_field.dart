import 'package:flutter/material.dart';
import '../../../core_ui.dart';

class InputField extends StatelessWidget {
  final double height;
  final double width;
  final bool isObscure;
  final String hint;
  final Function(String) onChanged;
  final String? Function(String?)? validator;

  const InputField({
    Key? key,
    required this.height,
    required this.width,
    required this.isObscure,
    required this.hint,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(left: height / 3),
      alignment: Alignment.centerLeft,
      color: AppColors.of(context).inputColor,
      child: TextFormField(
        onChanged: onChanged,
        obscureText: isObscure,
        validator: validator,
        style: AppFonts.robotoMedium16
            .copyWith(color: AppColors.of(context).black),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: AppFonts.robotoMedium16
              .copyWith(color: AppColors.of(context).inputTextColor),
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/style.dart';

class AppTextFormField extends StatelessWidget {
  final InputBorder? focuseBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hinttext;
  final String? labletext;
  final Function(String?) validator;

  final bool? isObscureText;
  final EdgeInsetsGeometry? contentpadding;
  final TextInputType? keyboardType;
  final Widget? suffixicon;
  final Color? fillColor;
  final TextEditingController? controller;

  const AppTextFormField({
    super.key,
    this.focuseBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hinttext,
    this.labletext,
    required this.validator,
    this.isObscureText,
    this.contentpadding,
    this.keyboardType,
    this.suffixicon,
    this.fillColor,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return validator(value);
      },
      controller: controller,
      obscureText: isObscureText ?? false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        fillColor: fillColor ?? ColorsApp.lightgray,
        filled: true,
        contentPadding: contentpadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 17.h,
            ),
        // FocusedBorder
        focusedBorder: focuseBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                color: ColorsApp.mainblue,
              ),
            ),
        // EnabledBorder
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsApp.graywhight,
              ),
            ),
        // errorBorder
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsApp.red,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        // focusedErrorBorder
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsApp.red,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        isDense: true,
        labelText: labletext,
        labelStyle: TextStyles.font14gray,
        hintText: hinttext,
        hintStyle: hintStyle ?? TextStyles.font14gray,
      ),
    );
  }
}

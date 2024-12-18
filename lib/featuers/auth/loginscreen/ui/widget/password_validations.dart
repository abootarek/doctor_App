// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Password_validations noooooooooooo
class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(' At Least 1 lowercase letter', hasLowerCase),
        virticalspace(2),
        buildValidationRow('At Least 1 UpperCase letter', hasUpperCase),
        virticalspace(2),
        buildValidationRow('At Least 1 Number letter', hasNumber),
        virticalspace(2),
        buildValidationRow('At Least 8 MinLength letter', hasMinLength),
        virticalspace(2),
        buildValidationRow('At Least 1 SpecialChar letter', hasSpecialChar),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasvalidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: ColorsApp.gray,
        ),
        horixontalspace(6),
        Text(
          text,
          style: TextStyles.font12mainblue.copyWith(
            decoration: hasvalidated ? TextDecoration.lineThrough : null,
            color: hasvalidated ? ColorsApp.gray : ColorsApp.mainblack,
            decorationColor: Colors.green,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
          ),
        ),
      ],
    );
  }
}

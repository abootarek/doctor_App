

import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/font_wight_helper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Wight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BblueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsApp.mainblue,
  );
  static TextStyle font13gray = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.gray,
  );
  static TextStyle font13black = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.black,
  );
  static TextStyle font16white = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.white,
  );
  static TextStyle font16gray = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.gray,
  );
  static TextStyle font14gray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsApp.gray,
  );
  static TextStyle font12mainblue = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.mainblue,
  );
  static TextStyle font12mainblack = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.mainblack,
  );
}

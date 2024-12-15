import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:docapp_pro/featuers/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsListViewItem extends StatelessWidget {
  final int itemIndex;

  final SpecializationsData? specializationsData;

  const SpecializationsListViewItem({
    super.key,
    required this.itemIndex,
    this.specializationsData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: ColorsApp.mainblack,
            radius: 30.r,
            child: Image.asset(
              "assets/images/General.png",
              height: 40.h,
              width: 40.w,
            ),
          ),
          virticalspace(12.h),
          Text(specializationsData?.name ?? 'Specialization',
              style: TextStyles.font12mainblue),
        ],
      ),
    );
  }
}

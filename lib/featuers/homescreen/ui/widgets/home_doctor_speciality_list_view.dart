import 'package:docapp_pro/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/sixbox.dart';
import '../../../../core/theming/style.dart';

class HomeDoctorSpecialityListView extends StatelessWidget {
  const HomeDoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(
              start: index == 0 ? 0 : 24.w,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: ColorsApp.transparent,
                  child: Image.asset('assets/images/General.png'),
                ),
                virticalspace(6),
                Text(
                  'General ${index + 1}',
                  style: TextStyles.font12mainblack,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

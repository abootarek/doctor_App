import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Abdelrahman!",
              style: TextStyles.font13black,
            ),
            virticalspace(2.h),
            Text(
              "How Are you Today?",
              style: TextStyles.font12grey,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: ColorsApp.lightgray,
          radius: 24.r,
          child: SvgPicture.asset("assets/images/BanierHomeScreen.png"),
        )
      ],
    );
  }
}

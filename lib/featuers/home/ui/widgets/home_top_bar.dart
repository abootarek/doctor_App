import 'package:docapp_pro/core/cache/key_values.dart';
import 'package:docapp_pro/core/cache/shiledperfrinse.dart';
import 'package:docapp_pro/core/helper/extintion.dart';
import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/routing/routs.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBar extends StatelessWidget {
  HomeTopBar({super.key});
  final imageUrl = SharedPrefHelper.getData(key: KeyValues.photo);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, ${SharedPrefHelper.getData(key: KeyValues.userName)}",
              style: TextStyles.font13black,
            ),
            verticalSpace(2.h),
            Text(
              "How Are you Today?",
              style: TextStyles.font12grey,
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.profileScreen);
          },
          child: CircleAvatar(
            foregroundColor: ColorsApp.mainblue,
            radius: 22.r,
            backgroundColor: ColorsApp.white,
            child: imageUrl == null
                ? Icon(
                    Icons.person,
                    color: ColorsApp.mainblue,
                  )
                : Image.network(imageUrl),
          ),
        )
      ],
    );
  }
}

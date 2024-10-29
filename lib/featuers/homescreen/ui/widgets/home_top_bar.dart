import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Mohamed!', style: TextStyles.font18Black700Wight),
            horixontalspace(2),
            Text(
              'How Are you Today?',
              style: TextStyles.font12mainblack,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 20,
          backgroundColor: ColorsApp.morelightergray,
          child: IconButton(
            onPressed: () {},
            icon: Badge.count(
              count: 1,
              child: Icon(
                Icons.notifications_none,
                color: ColorsApp.black,
              ),
            ),
          ),
          // child: Icon(
          //   Icons.notifications_none,
          //   color: ColorsApp.black,
          // ),
        )
      ],
    );
  }
}

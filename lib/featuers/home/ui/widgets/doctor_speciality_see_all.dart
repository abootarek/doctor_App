import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctors Speciality",
          style: TextStyles.font12mainblue,
        ),
        const Spacer(),
        Text(
          "See All",
          style: TextStyles.font12mainblue,
        ),
      ],
    );
  }
}

import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:docapp_pro/featuers/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  const DoctorListViewItem({
    super.key,
    required this.doctorsModel,
  });

  final DoctorModel? doctorsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0.r),
          child: Image.network(
            "https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvczkwLXBhLTE4NThfMS5wbmc.png",
            height: 120.h,
            width: 110.w,
          ),
        ),
        horixontalspace(16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doctorsModel?.name ?? ' Doctor Name',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font12mainblack),
              virticalspace(5.h),
              Text(
                  '${doctorsModel?.degree ?? 'Specialization'} | ${doctorsModel?.phone ?? 'Phone'}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font12mainblack),
              virticalspace(5.h),
              Text(doctorsModel?.email ?? 'Email',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font14gray),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/sixbox.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import '../../data/models/specializitions_response_model.dart';

class DoctorsSpecialityItem extends StatelessWidget {
  const DoctorsSpecialityItem({
    super.key,
    required this.specializitionsData,
    required this.itemIndex,
  });
  final SpecializitionsData? specializitionsData;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
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
            specializitionsData?.name ?? 'Specializition Name',
            style: TextStyles.font12mainblack,
          ),
        ],
      ),
    );
  }
}

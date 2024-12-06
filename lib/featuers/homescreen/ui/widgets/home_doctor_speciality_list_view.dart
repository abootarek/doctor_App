// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:docapp_pro/featuers/homescreen/data/models/specializitions_response_model.dart';
import 'home_doctors_speciality_list_view_item.dart';

class HomeDoctorSpecialityListView extends StatelessWidget {
  final List<SpecializitionsData?> specializitionsDataList;
  const HomeDoctorSpecialityListView({
    super.key,
    required this.specializitionsDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializitionsDataList.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialityItem(
            specializitionsData: specializitionsDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}

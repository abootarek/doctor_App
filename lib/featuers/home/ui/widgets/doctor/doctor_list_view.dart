import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:docapp_pro/featuers/home/data/models/specializations_response_model.dart';
import 'package:docapp_pro/featuers/home/ui/widgets/doctor/doctor_list_view_item.dart';

class DoctorSpacialityListView extends StatelessWidget {
  const DoctorSpacialityListView({
    super.key,
    this.doctorsList,
  });
  final List<DoctorModel?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctorsList?.length,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(bottom: 16.h),
        child: DoctorListViewItem(
          doctorsModel: doctorsList?[index],
        ),
      ),
    );
  }
}

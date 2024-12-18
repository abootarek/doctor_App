import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/featuers/home/ui/widgets/doctor/doctors_bloc_builder.dart';
import 'package:docapp_pro/featuers/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/doctor_speciality_see_all.dart';
import 'widgets/home_container_blue.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
          width: double.infinity,
          child: Column(
            children: [
              // Text('${SharedPrefHelper.getData(key: 'message')}'),
              HomeTopBar(),
              const HomeContainerBlue(),
              virticalspace(24.h),
              const DoctorSpecialitySeeAll(),
              virticalspace(16.h),
              Expanded(
                child: Column(
                  children: [
                    const SpecializationsBlocBuilder(),
                    virticalspace(16.h),
                    const DoctorsListView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/featuers/homescreen/ui/widgets/home_container_bainer.dart';
import 'package:docapp_pro/featuers/homescreen/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/home_doctor_speciality_list_view.dart';
import 'widgets/home_doctors_speciality.dart';
import 'widgets/recommendation_doctor_list_view.dart';
import 'widgets/recommendedation_doctor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: ColorsApp.white,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            16,
            26,
            16,
            18,
          ),
          child: Column(
            children: [
              const HomeTopBar(),
              virticalspace(16),
              const HomeContainerBiner(),
              virticalspace(24),
              const HomeDoctorSpeciality(),
              virticalspace(24),
              const HomeDoctorSpecialityListView(),
              virticalspace(24),
              const RecommendationDoctor(),
              const RecommendationDoctorListView()
            ],
          ),
        ),
      ),
    );
  }
}

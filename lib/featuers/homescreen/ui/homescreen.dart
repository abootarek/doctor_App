import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/featuers/homescreen/logic/cubit/home_specializitions_cubit.dart';
import 'package:docapp_pro/featuers/homescreen/logic/cubit/home_specializitions_state.dart';
import 'package:docapp_pro/featuers/homescreen/ui/widgets/home_container_bainer.dart';
import 'package:docapp_pro/featuers/homescreen/ui/widgets/home_doctor_speciality_list_view.dart';
import 'package:docapp_pro/featuers/homescreen/ui/widgets/home_top_bar.dart';
import 'package:docapp_pro/featuers/homescreen/ui/widgets/recommendedation_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/home_doctors_speciality.dart';

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
              BlocBuilder<HomeSpecializitionsCubit, HomeSpecializitionsState>(
                  buildWhen: (previous, current) =>
                      current is SpecializitionsLoading ||
                      current is SpecializitionsSuccess ||
                      current is SpecializitionsError,
                  builder: (context, state) {
                    return state.maybeWhen(
                      specializitionsloading: () => Center(
                        child: CircularProgressIndicator(
                          color: ColorsApp.mainblack,
                        ),
                      ),
                      specializitionssuccess: (specializitionsResponsemodel) {
                        var specializitionsList = specializitionsResponsemodel
                            .specializitionsDataList;
                        return Column(
                          children: [
                            HomeDoctorSpecialityListView(
                              specializitionsDataList:
                                  specializitionsList ?? [],
                            ),
                            // RecommendationDoctorListView(),
                          ],
                        );
                      },
                      // specializitionssuccess: (specializitionsResponsemodel) =>
                      //     const Expanded(
                      //   child: Column(
                      //     children: [
                      //       Text(
                      //         'data',
                      //         style: TextStyle(color: Colors.red),
                      //       ),
                      //       Text(
                      //         'data',
                      //         style: TextStyle(color: Colors.red),
                      //       ),
                      //       Text('data'),
                      //       Text('data'),
                      //     ],
                      //   ),
                      // ),
                      specializitionserror: (errorhandler) => Text(
                        errorhandler.failure.code.toString(),
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 40,
                        ),
                      ),
                      orElse: () {
                        return const Text(
                          'succes',
                          style: TextStyle(color: Colors.green, fontSize: 40),
                        );
                      },
                    );
                  }),
              const RecommendationDoctor(),
            ],
          ),
        ),
      ),
    );
  }
}

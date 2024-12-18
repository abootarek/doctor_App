import 'package:docapp_pro/featuers/home/logic/home_cubit.dart';
import 'package:docapp_pro/featuers/home/logic/home_state.dart';
import 'package:docapp_pro/featuers/home/ui/widgets/doctor/doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsError ||
          current is SpecializationsLoading ||
          current is SpecializationsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setpLoading();
          },
          specializationsError: (error) {
            return setpError();
          },
          specializationsSuccess: (specializationResponseModel) {
            var specializationList =
                specializationResponseModel.specializationDataList;
            return setpSuccess(specializationList);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setpLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget setpError() {
    return SizedBox.shrink();
  }

  Widget setpSuccess(specializationList) {
    return Expanded(
      child: DoctorSpacialityListView(
        doctorsList: specializationList?[0]?.doctorsList,
      ),
    );
  }
}

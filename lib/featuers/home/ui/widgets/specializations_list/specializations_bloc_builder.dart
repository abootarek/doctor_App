import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/featuers/home/logic/home_cubit.dart';
import 'package:docapp_pro/featuers/home/logic/home_state.dart';
import 'package:docapp_pro/featuers/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'speciality_list_view.dart';
import 'speciality_shimmer_loading.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
            specializationsLoading: () {
              return setupLoading();
            },
            specializationsSuccess: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSuccess(specializationsList);
            },
            specializationsError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpace(8),
        const DoctorsShimmerLoading(),
      ],
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}

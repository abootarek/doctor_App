import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:docapp_pro/featuers/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  // Specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  //  بس هنا بصيت كل جزء لةحده علشان بعمل فلتر  modelال   sccess في العادي اني اباصي في
  const factory HomeState.specializationsSuccess(
          List<SpecializationsData?>? specializationDataList) =
      SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) =
      SpecializationsError;
  // Doctors
  const factory HomeState.doctorsSuccess(List<DoctorModel?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;
}

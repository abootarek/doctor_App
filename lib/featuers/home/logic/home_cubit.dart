import 'package:bloc/bloc.dart';
import 'package:docapp_pro/core/cache/key_values.dart';
import 'package:docapp_pro/core/cache/shiledperfrinse.dart';
import 'package:docapp_pro/core/helper/extintion.dart';
import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:docapp_pro/featuers/home/data/models/specializations_response_model.dart';
import 'package:docapp_pro/featuers/home/data/repo/home_repo.dart';
import 'package:docapp_pro/featuers/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  List<SpecializationsData?>? specializationDataList =
      []; // هباصي فيها التخصصات

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations(
      token: "Bearer ${SharedPrefHelper.getData(key: KeyValues.token)}",
    );

    response.when(
      success: (specializationResponseModel) {
        specializationDataList =
            specializationResponseModel.specializationDataList ?? [];
        getDoctorsList(
          specializationId: specializationDataList?[0]?.id,
          // Omer //>> specializationId : 1
        );

        SharedPrefHelper.saveData(
            key: KeyValues.photo,
            value: specializationResponseModel
                .specializationDataList?[0]?.doctorsList?[0]?.photo
                .toString());
        emit(HomeState.specializationsSuccess(specializationDataList));
      },
      failure: (errorHandler) {
        emit(
          HomeState.specializationsError(errorHandler),
        );
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<DoctorModel?>? doctorsList =
        getDoctorsListBySpecialazatiosId(specializationId);
    if (!doctorsList.isEmptyOrNull()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }
  }

  /// filterSpecialazatiosListById
  getDoctorsListBySpecialazatiosId(specializationId) {
    return specializationDataList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}

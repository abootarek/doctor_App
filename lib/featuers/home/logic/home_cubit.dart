import 'package:bloc/bloc.dart';
import 'package:docapp_pro/core/cache/key_values.dart';
import 'package:docapp_pro/core/cache/shiledperfrinse.dart';
import 'package:docapp_pro/featuers/home/data/repo/home_repo.dart';
import 'package:docapp_pro/featuers/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());

    // final token = await SharedPrefHelper.getSecuredString(
    //     key: "${SharedPrefKeys.userToken}");

    final response = await _homeRepo.getSpecializations(
      token: "Bearer ${SharedPrefHelper.getData(key: KeyValues.token)}",
    );

    response.when(success: (specializationResponseModel) {
      SharedPrefHelper.saveData(
          key: KeyValues.photo,
          value: specializationResponseModel
              .specializationDataList?[0]?.doctorsList?[0]?.photo
              .toString());
      emit(HomeState.specializationsSuccess(specializationResponseModel));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler));
    });
  }
}

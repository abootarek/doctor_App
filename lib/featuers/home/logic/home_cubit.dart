import 'package:bloc/bloc.dart';
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
      token:
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzM0MjIxMTg5LCJleHAiOjE3MzQzMDc1ODksIm5iZiI6MTczNDIyMTE4OSwianRpIjoibGV5dXA3ZmpPeTcxNnp5TyIsInN1YiI6IjI1OTYiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.Q0win8TMG2aLyN-wBttGY2tOIQ4a0eocpvS9p7Ur7zM",
    );

    response.when(success: (specializationResponseModel) {
      emit(HomeState.specializationsSuccess(specializationResponseModel));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler));
    });
  }
}

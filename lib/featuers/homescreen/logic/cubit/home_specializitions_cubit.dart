import 'package:bloc/bloc.dart';
import 'package:docapp_pro/featuers/homescreen/data/repo/home_speclializitions_repo.dart';
import 'package:docapp_pro/featuers/homescreen/logic/cubit/home_specializitions_state.dart';

class HomeSpecializitionsCubit extends Cubit<HomeSpecializitionsState> {
  HomeSpecializitionsCubit(this._homeSpeclializitionsRepo)
      : super(const HomeSpecializitionsState.initial());
  final HomeSpeclializitionsRepo _homeSpeclializitionsRepo;
  void emitHomeSpeclializitions() async {
    emit(const HomeSpecializitionsState.specializitionsloading());
    final response = await _homeSpeclializitionsRepo.getSpecializitions();
    response.when(success: (specializitionsResponsemodel) {
      emit(HomeSpecializitionsState.specializitionssuccess(
          specializitionsResponsemodel));
    }, failure: (errorhandler) {
      emit(HomeSpecializitionsState.specializitionserror(errorhandler));
    });
  }
}

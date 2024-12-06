import 'package:docapp_pro/featuers/homescreen/data/repo/home_speclializitions_repo.dart';
import 'package:docapp_pro/featuers/homescreen/logic/cubit/home_specializitions_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeSpecializitionsCubit extends Cubit<HomeSpecializitionsState> {
  HomeSpecializitionsCubit(this._homeSpeclializitionsRepo)
      : super(const HomeSpecializitionsState.initial());
  final HomeSpeclializitionsRepo _homeSpeclializitionsRepo;
  void emitHomeSpeclializitions() async {
    emit(const HomeSpecializitionsState.specializitionsloading());
    final response = await _homeSpeclializitionsRepo.getSpecializitions(
      token:
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzMxMzc2NjQ2LCJleHAiOjE3MzE0NjMwNDYsIm5iZiI6MTczMTM3NjY0NiwianRpIjoid0lvazBKRUhVYm5PTzV2aiIsInN1YiI6IjI3MDgiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.zRBkHwN2UU-Z6DC_a41MDkX63lZsQMt9ifBDdldtz4k",
    );
    print('///////////////');
    print(response.toString());
    // succses state في ال  model منساش اباصي ال
    response.when(success: (specializitionsResponsemodel) {
      // print(specializitionsResponsemodel);
      emit(HomeSpecializitionsState.specializitionssuccess(
          specializitionsResponsemodel));
    }, failure: (errorhandler) {
      // print(errorhandler.toString());
      emit(HomeSpecializitionsState.specializitionserror(errorhandler));
    });
  }
}

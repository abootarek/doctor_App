import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/specializitions_response_model.dart';

part 'home_specializitions_state.freezed.dart';

@freezed
class HomeSpecializitionsState with _$HomeSpecializitionsState {
  const factory HomeSpecializitionsState.initial() = _Initial;

  const factory HomeSpecializitionsState.specializitionsloading() =
      SpecializitionsLoading;
  const factory HomeSpecializitionsState.specializitionssuccess(
    //  modelهباصي ال
    SpecializitionsResponseModel specializitionsResponsemodel,
  ) = SpecializitionsSuccess;
  const factory HomeSpecializitionsState.specializitionserror(
    ErrorHandler errorhandler,
  ) = SpecializitionsError;
}

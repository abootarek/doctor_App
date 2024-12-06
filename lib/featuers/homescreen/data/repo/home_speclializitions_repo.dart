import 'package:docapp_pro/featuers/homescreen/data/apis/home_apis_services.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/specializitions_response_model.dart';

class HomeSpeclializitionsRepo {
  final HomeApisServices _homeApisServices;

  HomeSpeclializitionsRepo(this._homeApisServices);

  Future<ApiResult<SpecializitionsResponseModel>> getSpecializitions(
      {required String token}) async {
    try {
      final response = await _homeApisServices.getSpecializitions(
        token,
      );

      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}

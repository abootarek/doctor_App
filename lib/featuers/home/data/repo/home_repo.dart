import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:docapp_pro/core/networking/api_result.dart';
import 'package:docapp_pro/featuers/home/data/apis/home_services_api.dart'
    show ApiService;
import 'package:docapp_pro/featuers/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final ApiService _apiService;
  HomeRepo(this._apiService);

  Future<ApiResult<SpecializationResponseModel>> getSpecializations({
    required String token,
  }) async {
    try {
      final response = await _apiService.getSpecializations(token);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

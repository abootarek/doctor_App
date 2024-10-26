import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:docapp_pro/core/networking/api_result.dart';
import 'package:docapp_pro/core/networking/api_services.dart';
import 'package:docapp_pro/featuers/loginscreen/data/models/login_request_body.dart';
import 'package:docapp_pro/featuers/loginscreen/data/models/login_response.dart';

class LoginRepo {
  final ApiServices _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
}}
}
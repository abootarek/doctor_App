// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:docapp_pro/core/networking/api_result.dart';
import 'package:docapp_pro/core/networking/api_services.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_request.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_response.dart';

class SignupRepo {
  final ApiServices _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignUpRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}

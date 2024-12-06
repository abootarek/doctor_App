// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:docapp_pro/core/networking/api_result.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_request.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_response.dart';

import '../apis/sign_up_services.dart';

class SignupRepo {
  final SignUpServices _signUpServices;
  SignupRepo(this._signUpServices);

  Future<ApiResult<SignupResponse>> signup(
      SignUpRequestBody signupRequestBody) async {
    try {
      final response = await _signUpServices.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}

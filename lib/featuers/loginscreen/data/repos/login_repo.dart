// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:docapp_pro/core/networking/api_error_handler.dart';
import 'package:docapp_pro/core/networking/api_result.dart';
import 'package:docapp_pro/featuers/loginscreen/data/models/login_request_body.dart';
import 'package:docapp_pro/featuers/loginscreen/data/models/login_response.dart';

import '../apis/login_services.dart';

class LoginRepo {
  final LoginServices _loginServices;
  LoginRepo(this._loginServices);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _loginServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}

import 'package:dio/dio.dart';
import 'package:docapp_pro/core/networking/api_constants.dart';
import 'package:docapp_pro/featuers/loginscreen/data/models/login_request_body.dart';
import 'package:docapp_pro/featuers/loginscreen/data/models/login_response.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_request.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_response.dart';

import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ConstansApi.apiBaseUrl)
// retrofit
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  /// Post Method => request data .
  @POST(ConstansApi.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ConstansApi.signup)
  Future<SignupResponse> signup(
    @Body() SignUpRequestBody signupRequestBody,
  );
}

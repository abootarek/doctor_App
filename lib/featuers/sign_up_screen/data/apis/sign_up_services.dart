import 'package:dio/dio.dart';
import 'package:docapp_pro/core/networking/api_constants.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/apis/sing_up_constants.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_request.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_response.dart';

import 'package:retrofit/retrofit.dart';

part 'sign_up_services.g.dart';
@RestApi(baseUrl: ConstansApi.apiBaseUrl)
// retrofit
abstract class SignUpServices {
  factory SignUpServices(Dio dio, {String baseUrl}) = _SignUpServices;
  @POST(SingUpConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignUpRequestBody signupRequestBody,
  );
}

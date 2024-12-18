import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import 'login_api_constants.dart';

part 'login_services.g.dart';

@RestApi(baseUrl: ConstansApi.apiBaseUrl)
abstract class LoginServices {
  factory LoginServices(Dio dio, {String baseUrl}) = _LoginServices;

  @POST(LoginApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}

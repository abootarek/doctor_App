// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:docapp_pro/core/networking/api_constants.dart';
import 'package:docapp_pro/featuers/home/data/models/specializations_response_model.dart';

import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ConstansApi.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ConstansApi.specialization)
  Future<SpecializationResponseModel> getSpecializations(
    @Header('Authorization') String token,
  );
}

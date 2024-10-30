import 'package:dio/dio.dart';
import 'package:docapp_pro/core/networking/api_constants.dart';
import 'package:docapp_pro/featuers/homescreen/data/apis/home_apis_constants.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../models/specializitions_response_model.dart';

part 'home_apis_services.g.dart';

@JsonSerializable()
@RestApi(baseUrl: ConstansApi.apiBaseUrl)
abstract class HomeApisServices {
  factory HomeApisServices(Dio dio, {String? baseUrl}) = _HomeApisServices;

  @GET(HomeApisConstants.specalizationEd)
  Future<SpecializitionsResponseModel> getSpecializitions();
}

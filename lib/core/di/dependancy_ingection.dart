import 'package:dio/dio.dart';
import 'package:docapp_pro/core/networking/api_factory.dart';
import 'package:docapp_pro/featuers/home/data/apis/home_services_api.dart';
import 'package:docapp_pro/featuers/home/data/repo/home_repo.dart';
import 'package:docapp_pro/featuers/loginscreen/data/apis/login_services.dart';
import 'package:docapp_pro/featuers/loginscreen/data/repos/login_repo.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/apis/sign_up_services.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/repo/sign_up_repo.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //setupGetIt "main" متنساش تحطها في
  // dio and ApiServices
  Dio dio = DioFactory.getDio(); // يتعمل مره واحده
  getIt.registerLazySingleton<LoginServices>(() => LoginServices(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // sinup
  getIt.registerLazySingleton<SignUpServices>(() => SignUpServices(dio));

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));

  // Home
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}

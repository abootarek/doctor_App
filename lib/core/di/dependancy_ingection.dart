import 'package:dio/dio.dart';
import 'package:docapp_pro/core/networking/api_factory.dart';
import 'package:docapp_pro/core/networking/api_services.dart';
import 'package:docapp_pro/featuers/homescreen/data/apis/home_apis_services.dart';
import 'package:docapp_pro/featuers/homescreen/data/repo/home_speclializitions_repo.dart';
import 'package:docapp_pro/featuers/homescreen/logic/cubit/home_specializitions_cubit.dart';
import 'package:docapp_pro/featuers/loginscreen/data/repos/login_repo.dart';
import 'package:docapp_pro/featuers/loginscreen/logic/cubit/login_cubit.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/repo/sign_up_repo.dart';
import 'package:docapp_pro/featuers/sign_up_screen/logic/cubit/signup_cubit.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //setupGetIt "main" متنساش تحطها في
  // dio and ApiServices
  Dio dio = DioFactory.getDio(); // يتعمل مره واحده
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // sinup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));

  // Home
  getIt.registerLazySingleton<HomeApisServices>(() => HomeApisServices(dio));

  getIt.registerLazySingleton<HomeSpeclializitionsRepo>(
      () => HomeSpeclializitionsRepo(getIt()));
}

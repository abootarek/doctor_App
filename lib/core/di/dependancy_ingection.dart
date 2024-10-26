import 'package:dio/dio.dart';
import 'package:docapp_pro/core/networking/api_factory.dart';
import 'package:docapp_pro/core/networking/api_services.dart';
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
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // sinup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // Home
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}

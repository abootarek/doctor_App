import 'package:docapp_pro/core/di/dependancy_ingection.dart';
import 'package:docapp_pro/core/routing/routs.dart';
import 'package:docapp_pro/featuers/homescreen/logic/cubit/home_specializitions_cubit.dart';
import 'package:docapp_pro/featuers/homescreen/ui/homescreen.dart';
import 'package:docapp_pro/featuers/loginscreen/logic/cubit/login_cubit.dart';
import 'package:docapp_pro/featuers/loginscreen/ui/logins_screen.dart';
import 'package:docapp_pro/featuers/onbording/ui/onbording_screen.dart';
import 'package:docapp_pro/featuers/sign_up_screen/logic/cubit/signup_cubit.dart';
import 'package:docapp_pro/featuers/sign_up_screen/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // onbordingscreen
      case Routes.onbordingscreen:
        return MaterialPageRoute(
          builder: (context) => const OnbordingScreen(),
        );
// loginScreen
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
        );
      // SignUpScreen
      case Routes.signupscreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignupCubit(getIt()),
            child: const SignUpScreen(),
          ),
        );
      // HomeScreen
      case Routes.homescreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeSpecializitionsCubit(getIt()),
            child: const HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

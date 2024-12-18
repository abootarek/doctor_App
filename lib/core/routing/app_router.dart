import 'package:docapp_pro/core/di/dependancy_ingection.dart';
import 'package:docapp_pro/core/routing/routs.dart';
import 'package:docapp_pro/featuers/auth/profile/ui/profile_screen.dart';
import 'package:docapp_pro/featuers/home/logic/home_cubit.dart';
import 'package:docapp_pro/featuers/home/ui/home_screen.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/logic/cubit/login_cubit.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/logins_screen.dart';
import 'package:docapp_pro/featuers/onbording/ui/onbording_screen.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/logic/cubit/signup_cubit.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // onbordingscreen
      case Routes.onbordingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnbordingScreen(),
        );
// loginScreen
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
        );
      // SignUpScreen
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignupCubit(getIt()),
            child: const SignUpScreen(),
          ),
        );
      // ProfileScreen
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
      // HomeScreen
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}

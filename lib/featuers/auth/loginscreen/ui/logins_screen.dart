import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:docapp_pro/core/widget/app_text_button.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/logic/cubit/login_cubit.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/email_and_password.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/login_bloc_listener.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/rememberme_and_forgerpass.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/richtext.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/social_networking_login.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/text_and_button_signin.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/text_and_divider_login.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/text_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 45.h,
            horizontal: 30.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWelcome(),
                verticalSpace(36),
                const EmailAndPassword(),
                verticalSpace(18),
                const RemembermeAndForgetPass(),
                verticalSpace(40),
                AppTextButton(
                  buttonText: 'Login',
                  onPressed: () {
                    vaildateGoLogin(context);
                  },
                  textStyle: TextStyles.font16white,
                ),
                verticalSpace(46),
                const TextDividerLogin(),
                verticalSpace(32),
                const SocialNetworkingLogin(),
                verticalSpace(32),
                const RichTextComponant(),
                verticalSpace(24),
                const TextAndButtonSignIn(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void vaildateGoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}

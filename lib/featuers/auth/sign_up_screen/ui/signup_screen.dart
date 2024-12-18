import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:docapp_pro/core/widget/app_text_button.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/ui/widget/text_and_divider_login.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/logic/cubit/signup_cubit.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/ui/widget/sign_up_form.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/ui/widget/richtext_signup.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/ui/widget/sign_up_bloc_listner.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/ui/widget/socail_networking_signup.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/ui/widget/text_and_button_signup.dart';
import 'package:docapp_pro/featuers/auth/sign_up_screen/ui/widget/text_create_acount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 45.h,
          horizontal: 30.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextCreateAcount(),
              virticalspace(36),
              const SignUpForm(),
              virticalspace(18),
              AppTextButton(
                buttonText: 'Create Account',
                onPressed: () {
                  validateThenDoSignup(context);
                },
                textStyle: TextStyles.font16white,
              ),
              virticalspace(18),
              virticalspace(18),
              const TextDividerLogin(),
              virticalspace(32),
              const SocialNetworkingSignUp(),
              virticalspace(32),
              const RichTextComponantSignUp(),
              virticalspace(32),
              const TextAndButtonSignUp(),
              const SignUpBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) async {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitsignupStates();
    }
  }
}

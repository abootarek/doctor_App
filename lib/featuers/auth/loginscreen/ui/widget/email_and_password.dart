import 'package:docapp_pro/core/helper/app_regex.dart';
import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/widget/app_text_form_field.dart';
import 'package:docapp_pro/featuers/auth/loginscreen/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  // bool hasLowerCase = false;
  // bool hasUpperCase = false;
  // bool hasSpecialCharacters = false;
  // bool hasNumber = false;
  // bool hasMinLength = false;

  // late TextEditingController passwordController;
  // @override
  // void initState() {
  //   super.initState();
  //   passwordController = context.read<LoginCubit>().passwordController;
  //   setupPasswordControllerListener();
  // }

  // void setupPasswordControllerListener() {
  //   passwordController.addListener(() {
  //     setState(() {
  //       hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
  //       hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
  //       hasSpecialCharacters =
  //           AppRegex.hasSpecialCharacter(passwordController.text);
  //       hasNumber = AppRegex.hasNumber(passwordController.text);
  //       hasMinLength = AppRegex.hasMinLength(passwordController.text);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hinttext: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          virticalspace(18),
          AppTextFormField(
            hinttext: "Password",
            controller: context.read<LoginCubit>().passwordController,
            isObscureText: isObscureText,
            suffixicon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child:
                  Icon(isObscureText ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.hasMinLength(value) ||
                  !AppRegex.hasUpperCase(value) ||
                  !AppRegex.hasLowerCase(value) ||
                  !AppRegex.hasNumber(value) ||
                  !AppRegex.hasSpecialCharacter(value)) {
                return "Please enter a valid password";
              }
            },
          ),
          virticalspace(24),
          // PasswordValidations(
          //   hasLowerCase: hasLowerCase,
          //   hasUpperCase: hasUpperCase,
          //   hasNumber: hasNumber,
          //   hasSpecialChar: hasSpecialCharacters,
          //   hasMinLength: hasMinLength,
          // ),
        ],
      ),
    );
  }
}
  // void dispose() {
  //   passwordController.dispose();
  //   super.dispose();
  // }

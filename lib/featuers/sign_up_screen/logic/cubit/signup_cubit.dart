// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/model/sign_up_request.dart';
import 'package:docapp_pro/featuers/sign_up_screen/data/repo/sign_up_repo.dart';
import 'package:docapp_pro/featuers/sign_up_screen/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(
    this._signupRepo,
  ) : super(const SignupState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitsignupStates() async {
    emit(const SignupState.loading());
    final response = await _signupRepo.signup(
      SignUpRequestBody(
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          gender: 0,
          password: passwordController.text,
          passwordConfirmation: passwordController.text),
    );

    response.when(success: (signupResponse) {
      emit(SignupState.success(signupResponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}

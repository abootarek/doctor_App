// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:docapp_pro/core/cache/shiledperfrinse.dart';
import 'package:docapp_pro/featuers/loginscreen/data/models/login_request_body.dart';
import 'package:docapp_pro/featuers/loginscreen/data/repos/login_repo.dart';
import 'package:docapp_pro/featuers/loginscreen/logic/cubit/login_state.dart';

import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    response.when(success: (loginResponse) {
      SharedPrefHelper.saveData(
          key: 'token', value: loginResponse.userData!.token);
      SharedPrefHelper.saveData(
          key: 'message', value: loginResponse.message.toString());
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message.toString()));
    });
  }
}

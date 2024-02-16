

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/constants/constants.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/features/login/data/models/auth_model.dart';
import 'package:flutter_complete_project/features/login/data/models/login_request_model.dart';
import 'package:flutter_complete_project/features/login/data/repository/auth_repository.dart';
import 'package:flutter_complete_project/features/login/logic/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepoistry) : super(const AuthState.idle());
  final AuthRepository authRepoistry;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //TextEditingController for phone and password
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

    UserModel? userModel;

  //formKey

  void login({required LoginRequestModel loginRequestModel}) async {
    emit(const AuthState.loginLoading());
    var result =
        await authRepoistry.signIn(loginRequestModel: loginRequestModel);

    result.when(
      success: (AuthModel response) async {
        token = response.data!.accessToken;
        userModel = response.data?.user;

        emit(AuthState.loginSuccess(response));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(AuthState.loginError(error));
      },
    );
  }
}
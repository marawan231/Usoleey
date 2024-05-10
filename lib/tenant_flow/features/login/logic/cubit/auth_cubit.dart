import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/constants/constants.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/enums/enums.dart';
import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/tenant_flow/features/account_info/presentation/screens/account_info_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/auth_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/login_request_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/navigator/named_routes.dart';
import '../../../../../core/navigator/navigator.dart';
import '../../../../../core/shared_cubits/user_cubit/user_cubit.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepoistry) : super(_Initial());
  final AuthRepository authRepoistry;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //TextEditingController for phone and password
  final phoneController = TextEditingController();
  final FocusNode phoneNumberFocusNode = FocusNode();
  final passwordController = TextEditingController();

  UserModel? userModel;

  //formKey

  void login() async {
    if (!getIt<AuthCubit>().formKey.currentState!.validate()) return;
    final String? language = await CacheHelper.getData(key: 'language');
    final String? fcmToken = await getToken();
    LoginRequestModel loginRequestModel = LoginRequestModel(
        phoneNumber: getIt<AuthCubit>().phoneController.text,
        password: getIt<AuthCubit>().passwordController.text,
        deviceId: 'asd',
        deviceType: Platform.isAndroid ? 'android' : 'ios',
        fcmToken: fcmToken,
        language: language);
    emit(state.copyWith(loginRequestState: RequestState.loading));

    var result =
        await authRepoistry.signIn(loginRequestModel: loginRequestModel);

    result.when(
      success: (AuthModel response) async {
        saveUserDataInStorage(response.data!.user!);
        saveTokenDataInStorage(response.data!.accessToken!);
        token = response.data!.accessToken;
        if (response.data!.user!.role == 'OWNER') {
          getIt<UserCubit>()
              .updateUser(response.data!.user!, stats: response.data!.stats);
          Go.offAllNamed(NamedRoutes.ownerLayout);
        } else {
          getIt<UserCubit>().updateUser(response.data!.user!);
          Go.offAllNamed(NamedRoutes.tenantLayout);
        }
        emit(state.copyWith(loginRequestState: RequestState.success));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        showToast(message: error);
        emit(state.copyWith(loginRequestState: RequestState.error));
      },
    );
  }

  void changePhoneNumberFocus(bool hasFocus) {
    emit(state.copyWith(
        phoneNumberFocus: hasFocus || phoneController.text.isNotEmpty));
  }
}

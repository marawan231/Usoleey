import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/shared_cubits/user_cubit/user_cubit.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_text_form_field.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/login_request_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/auth_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
    getIt<AuthCubit>().phoneController.text = '01092964109';
    getIt<AuthCubit>().passwordController.text = '111111';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      body: Stack(
        // fit: StackFit.expand,
        children: [
          _buildBackground(),
          _buildContent(context),
        ],
      ),
    );
  }

  _buildBackground() {
    return SizedBox(
      child: Image.asset(
        AssetsManager.loginBackground,
        width: double.infinity,
        // height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildContent(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 250.sp),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Form(
      key: getIt<AuthCubit>().formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 24.sp, end: 24.sp, top: 24.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              32.verticalSpace,
              _buildPhoneForm(context),
              32.verticalSpace,
              _buildPasswordForm(context),
              32.verticalSpace,
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  _buildHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.login,
          style: getBoldStyle(
            fontSize: 24.sp,
            color: ColorsManager.black,
          ),
        ),
        8.verticalSpace,
        Text(
          S.current.enterYourMobileNumber,
          textAlign: TextAlign.start,
          style: getRegularStyle(
            fontSize: 14.sp,
            color: ColorsManager.greyLight,
          ),
        ),
      ],
    );
  }

  _buildPhoneForm(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: AppCustomTextFormField(
              controller: getIt<AuthCubit>().phoneController,
              hintText: '05xxxxxxx33',
              keyboardType: TextInputType.phone,
              validator: (p0) {
                if (p0!.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
          ),
          8.horizontalSpace,
          Expanded(flex: 1, child: _buildNumberPrefix()),
        ],
      ),
    );
  }

  _buildPasswordForm(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppCustomTextFormField(
            controller: getIt<AuthCubit>().passwordController,
            hintText: S.current.password,
            keyboardType: TextInputType.visiblePassword,
            validator: (p0) {
              if (p0!.isEmpty || p0.length < 6) {
                return 'Please enter your password';
              }
              return null;
            },
            obscureText: true,
          ),
        ),
      ],
    );
  }

  Widget _buildNumberPrefix() {
    return Container(
      width: 63.sp,
      height: 56.sp,
      // padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: ColorsManager.greyLighter,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          width: 1.sp,
          color: ColorsManager.grey,
        ),
      ),
      child: Center(
        child: Text(
          '966+',
          style:
              getRegularStyle(fontSize: 14.sp, color: ColorsManager.greyLight),
        ),
      ),
    );
  }

  _buildFooter() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (AuthModel authModel) {
            if (authModel.data!.user!.role == 'OWNER') {
              getIt<UserCubit>()
                  .updateUser(authModel.data!.user!, authModel.data!.stats!);
              Go.offAllNamed(NamedRoutes.ownerLayout);
            } else {
              Go.offAllNamed(NamedRoutes.layout);
            }
          },
          loginError: (message) {
            showToast(message: message.toString());
          },
        );
      },
      builder: (context, state) {
        return AppTextButton(
          isLoading: state.maybeWhen(
            orElse: () => false,
            loginLoading: () => true,
          ),
          buttonText: S.current.next,
          onPressed: () async {
            if (getIt<AuthCubit>().formKey.currentState!.validate()) {
              final String? fcmToken = await getToken();
              getIt<AuthCubit>().login(
                  loginRequestModel: LoginRequestModel(
                      phoneNumber: getIt<AuthCubit>().phoneController.text,
                      password: getIt<AuthCubit>().passwordController.text,
                      deviceId: 'asd',
                      deviceType: Platform.isAndroid ? 'android' : 'ios',
                      fcmToken: fcmToken,
                      language: 'ar'));
            }
          },
        );
      },
    );
  }
}

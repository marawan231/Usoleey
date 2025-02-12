import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/validator.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_text_form_field.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_cubit.dart';

import '../../../../../core/enums/enums.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    //0562584095
    //0000000000
    // getIt<AuthCubit>().phoneController.text = '';
    // getIt<AuthCubit>().passwordController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      body: Stack(
        fit: StackFit.expand,
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
      margin: EdgeInsets.only(top: 250),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(30),
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
          padding: EdgeInsetsDirectional.only(start: 24, end: 24, top: 24),
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
            fontSize: 24,
            color: ColorsManager.black,
          ),
        ),
        8.verticalSpace,
        Text(
          S.current.enterYourMobileNumber,
          textAlign: TextAlign.start,
          style: getRegularStyle(
            fontSize: 14,
            color: ColorsManager.greyLight,
          ),
        ),
      ],
    );
  }

  _buildPhoneForm(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: _buildNumberPrefix()),
          8.horizontalSpace,
          Expanded(
            flex: 5,
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return Focus(
                  onFocusChange: getIt<AuthCubit>().changePhoneNumberFocus,
                  child: AppCustomTextFormField(
                    focusNode: getIt<AuthCubit>().phoneNumberFocusNode,
                    controller: getIt<AuthCubit>().phoneController,
                    hintText: state.phoneNumberFocus ? null : '05xxxxxxx33',
                    keyboardType: TextInputType.phone,
                    validator: (value) => value!.validatePhone(),
                  ),
                );
              },
            ),
          ),
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
            validator: (value) => value!.validatePassword(),
            obscureText: true,
          ),
        ),
      ],
    );
  }

  Widget _buildNumberPrefix() {
    return Container(
      width: 63,
      height: 56,
      // padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: ColorsManager.greyLighter,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: ColorsManager.grey,
        ),
      ),
      child: Center(
        child: Text(
          '966+',
          style: getRegularStyle(fontSize: 14, color: ColorsManager.greyLight),
        ),
      ),
    );
  }

  _buildFooter() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return AppTextButton(
            isLoading: state.loginRequestState == RequestState.loading,
            buttonText: S.current.login,
            onPressed: () => getIt<AuthCubit>().login());
      },
    );
  }
}

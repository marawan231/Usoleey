import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_text_form_field.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
    return SingleChildScrollView(
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
        children: [
          Expanded(
            flex: 5,
            child: AppCustomTextFormField(hintText: '05xxxxxxx33'),
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
          // flex: 5,
          child: AppCustomTextFormField(
            hintText: S.current.password,
            obscureText: true,
          ),
        ),
        // 8.horizontalSpace,
        // Expanded(flex: 1, child: _buildNumberPrefix()),
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
          '90+',
          style:
              getRegularStyle(fontSize: 14.sp, color: ColorsManager.greyLight),
        ),
      ),
    );
  }

  _buildFooter() {
    return AppTextButton(
      buttonText: S.current.next,
      onPressed: () {
        Go.offAllNamed(NamedRoutes.layout);
      },
    );
  }
}

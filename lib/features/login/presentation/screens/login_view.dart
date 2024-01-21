import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 24.sp, end: 24.sp, top: 24.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          _buildForm(context),
          _buildFooter(),
        ],
      ),
    );
  }

  _buildHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'تسجيل الدخول / إنشاء حساب',
          style: getBoldStyle(
            fontSize: 24.sp,
            color: ColorsManager.black,
          ),
        ),
        8.verticalSpace,
        Text(
          'قم بإدخال رقم الجوال وسيتم إرسال رمز التحقق في رسالة نصية إذا كان هذا اول تسجيل دخول لك',
          textAlign: TextAlign.start,
          style: getRegularStyle(
            fontSize: 14.sp,
            color: ColorsManager.greyLight,
          ),
        ),
      ],
    );
  }

  _buildForm(BuildContext context) {
    return Form(
        child: Column(children: [
      TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'رقم الجوال',
          hintStyle: getRegularStyle(
            fontSize: 14.sp,
            color: ColorsManager.greyLight,
          ),
          prefixIcon: Icon(Icons.phone),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: ColorsManager.greyLight,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: ColorsManager.greyLight,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: ColorsManager.greyLight,
            ),
          ),
        ),
      ),
    ]));
  }

  _buildFooter() {
    return AppTextButton(
      buttonText: 'Nexr',
    );
  }
}

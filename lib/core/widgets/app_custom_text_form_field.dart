import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomTextFormField extends StatelessWidget {
  const AppCustomTextFormField(
      {super.key,
      this.hintText,
      this.keyboardType,
      this.obscureText,
       this.controller,
      this.validator,
      this.onSaved,
      this.onChanged,
      this.onFieldSubmitted,
      this.onTap,
      this.onEditingComplete});
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextEditingController ?controller;
  final String? Function(String?)? validator;
  final Function(String)? onSaved;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Function? onTap;
  final Function(String)? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      TextFormField(
        controller: controller,
        validator: validator,
        // onSaved: onSaved,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        // onEditingComplete: onEditingComplete,
        // onTap: onTap,
        obscureText: obscureText ?? false,

        // textDirection: TextDirection.rtl,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        keyboardType: keyboardType ?? TextInputType.phone,
        decoration: InputDecoration(
          hintTextDirection: TextDirection.ltr,
          hintText:   hintText,
          hintStyle: getRegularStyle(
            fontSize: 16.sp,
            color: ColorsManager.greyMedium,
          ),
          // prefixIcon: Icon(Icons.phone),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: ColorsManager.greyLight,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: ColorsManager.grey,
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
}

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
      this.onEditingComplete,
      this.hintTextDirection,
      this.maxLines,
      this.textInputAction,
      this.readOnly});

  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onSaved;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final Function(String)? onEditingComplete;
  final TextDirection? hintTextDirection;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 56.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: ColorsManager.grey)),
        ),
        TextFormField(
          onTap: onTap,
          maxLines: maxLines ?? 1,
          controller: controller,
          validator: validator,
          readOnly: readOnly ?? false,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          obscureText: obscureText ?? false,
          textInputAction: textInputAction ?? TextInputAction.next,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          keyboardType: keyboardType ?? TextInputType.phone,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            border: InputBorder.none,
            labelText: hintText,
            floatingLabelStyle:
                getRegularStyle(fontSize: 16.sp, color: ColorsManager.primary),
            labelStyle: getRegularStyle(
                fontSize: 16.sp, color: ColorsManager.greyMedium),
          ),
        )
      ],
    );
  }
}

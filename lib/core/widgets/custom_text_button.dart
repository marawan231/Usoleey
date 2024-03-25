import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? titleColor;
  final TextStyle? titleStyle;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final bool loading;
  final Widget? child;
  final double? fontSize;

  const CustomTextButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.width,
      this.height,
      this.backgroundColor,
      this.titleColor,
      this.titleStyle,
      this.borderRadius,
      this.margin,
      this.loading = false,
      this.child,
      this.fontSize});

  factory CustomTextButton.icon(
      {Key? key,
      required VoidCallback? onPressed,
      required Widget icon,
      required String title,
      EdgeInsets margin,
      double fontSize,
      double height}) = _CustomTextButtonWithIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 36,
      width: width ?? MediaQuery.of(context).size.width,
      margin: margin,
      child: TextButton(
          onPressed: loading ? null : onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: ColorsManager.primary, width: 1.5),
                borderRadius: borderRadius ?? BorderRadius.circular(30.r)),
            textStyle: titleStyle ?? getBoldStyle(fontSize: fontSize ?? 12.sp),
            foregroundColor: titleColor ?? ColorsManager.primary,
            backgroundColor: backgroundColor ?? ColorsManager.white,
          ),
          child: loading
              ? const CupertinoActivityIndicator()
              : child ?? Text(title)),
    );
  }
}

class _CustomTextButtonWithIcon extends CustomTextButton {
  _CustomTextButtonWithIcon({
    super.key,
    required super.onPressed,
    required super.title,
    required Widget icon,
    super.loading = false,
    super.margin,
    super.height,
    super.fontSize,
  }) : super(
          child: _CustomTextButtonWithIconChild(
              icon: icon, title: title, loading: loading),
        );
}

class _CustomTextButtonWithIconChild extends StatelessWidget {
  const _CustomTextButtonWithIconChild(
      {required this.title, required this.icon, this.loading = false});

  final String title;
  final Widget icon;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.textScalerOf(context).textScaleFactor;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    return loading
        ? const CupertinoActivityIndicator()
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              icon,
              SizedBox(width: gap),
              Flexible(child: Text(title))
            ],
          );
  }
}

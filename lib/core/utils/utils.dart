//show ios dialog
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> showIosDialog(
    {required BuildContext context,
    String? title,
    String? content,
    String? okText,
    String? cancelText,
    Function? ok,
    Function? cancel}) async {
  return showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Padding(
            padding: EdgeInsets.only(bottom: 8.sp),
            child: Text(title ?? '', style: getBoldStyle(fontSize: 16.sp)),
          ),
          content: Text(content ?? '', style: getRegularStyle(fontSize: 12.sp)),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                cancelText ?? '',
                style: getRegularStyle(
                  fontSize: 16.sp,
                  color: ColorsManager.primary,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                cancel!();
              },
            ),
            CupertinoDialogAction(
              child: Text(
                okText ?? '',
                style: getBoldStyle(fontSize: 16.sp, color: ColorsManager.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                ok!();
              },
            ),
          ],
        );
      });
}

void showToast({
  required String message,
  Color? color,
  ToastGravity? gravity,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    timeInSecForIosWeb: 3,
    gravity: gravity ?? ToastGravity.BOTTOM,
    backgroundColor: color ?? ColorsManager.red,
  );
}

//show snackbar
void showSnackBar({
  required String message,
  Color? color,
  int? duration,
}) {
  ScaffoldMessenger.of(Go.navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: getRegularStyle(
          fontSize: 14.sp,
          color: Colors.white,
        ),
      ),
      backgroundColor: color ?? ColorsManager.red,
      duration: Duration(seconds: duration ?? 2),
    ),
  );
}

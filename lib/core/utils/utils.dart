//show ios dialog
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

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
  Color? textColor,
}) {
  Fluttertoast.showToast(
    textColor: textColor,
    // webPosition: 'center',
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

void launchWebUrl({required String url}) async {
  // print('----------------------------------------------------------------');
  if (!await launchUrl(Uri.parse(url))) {
    showToast(message: 'Could not launch $url');
    // launchWebUrl(url: 'https://www.google.com');
  }
}

getMonthName(int month) {
  switch (month) {
    case 1:
      return 'يناير';
    case 2:
      return 'فبراير';
    case 3:
      return 'مارس';
    case 4:
      return 'أبريل';
    case 5:
      return 'مايو';
    case 6:
      return 'يونيو';
    case 7:
      return 'يوليو';
    case 8:
      return 'أغسطس';
    case 9:
      return 'سبتمبر';
    case 10:
      return 'أكتوبر';
    case 11:
      return 'نوفمبر';
    case 12:
      return 'ديسمبر';
    default:
      return '';
  }
}

getCreatedAt(String createdAt) {
  //from 2023-02-14T00:00:00.000Z to فبراير ١٤، ٢٠٢٣

  final date = DateTime.parse(createdAt);
  final String day = date.day.toString();
  final String month = getMonthName(date.month);
  final String year = date.year.toString();

  final result = '$day $month $year';

  return result;
}

int getCount(int length) {
  //if legnth of ads is less than 4 return the length of ads else return length
  return length > 3 ? 3 : length;
}

Future<void> showGalleryError(BuildContext context) async {
  final status = await Permission.photos.status;
  if (status.isDenied) {
    showIosDialog(
      context: context,
      title: 'الصور',
      content: 'يجب السماح بالوصول للصور',
      okText: 'الذهاب للإعدادات',
      cancelText: 'إلغاء',
      ok: () {
        openAppSettings();
      },
      cancel: () {},
    );
  } else {
    showToast(message: 'حدث خطأ ما');
  }
}

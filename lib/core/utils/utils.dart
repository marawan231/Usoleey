//show ios dialog
import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';

import '../../generated/l10n.dart';
import '../enums/enums.dart';
import '../res/assets_manager.dart';
import '../shared_models/invoice_type_model.dart';
import '../shared_models/ticket_status_model.dart';
import '../shared_models/ticket_type_model.dart';

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

Future<File?> getCameraImage() async {
  final ImagePicker picker = ImagePicker();
  File? image;
  await showModalBottomSheet(
      context: Go.navigatorKey.currentContext!,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () async {
                  final currentImage =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (currentImage != null) {
                    image = File(currentImage.path);
                  }
                  Go.back();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () async {
                  final currentImage =
                      await picker.pickImage(source: ImageSource.camera);
                  if (currentImage != null) {
                    image = File(currentImage.path);
                  }
                  Go.back();
                },
              ),
            ],
          ),
        );
      });
  return image;
}

Future<String?> getToken() async {
  String? token;
  try {
    FirebaseMessaging.instance.setAutoInitEnabled(true);
    token = await FirebaseMessaging.instance.getToken();
  } catch (error) {
    token = null;
    log('firebase error  $error');
  }
  return token;
}

String formatDate(String dateString) {
  DateTime dateTime = DateTime.parse(dateString);

  final locale = 'ar'; // Set the locale to Arabic
  final format = DateFormat.yMMMMd(locale);

  return format.format(dateTime);
}

String formatCreatedAtAgo(String createAt) {
  DateTime createdAt = DateTime.parse(createAt);
  final now = DateTime.now();
  final difference = now.difference(createdAt);
  timeago.setLocaleMessages('ar', timeago.ArMessages());

  return timeago.format(now.subtract(difference), locale: 'ar');
}

TicketStatusModel getTicketStatusProperties(TicketStatus status) {
  switch (status) {
    case TicketStatus.reviewing:
      return TicketStatusModel(
          status: S.current.reviewing,
          backgroundColor: ColorsManager.goldLight,
          color: ColorsManager.gold);
    case TicketStatus.solved:
      return TicketStatusModel(
          status: S.current.solved,
          backgroundColor: ColorsManager.greenLight,
          color: ColorsManager.greenPrimary);
    case TicketStatus.canceled:
      return TicketStatusModel(
          status: S.current.canceled,
          backgroundColor: ColorsManager.red.withOpacity(0.5),
          color: ColorsManager.red);
    case TicketStatus.processing:
      return TicketStatusModel(
          status: S.current.processing,
          backgroundColor: ColorsManager.primaryLighter,
          color: ColorsManager.primary);
  }
}


TicketTypeModel getTicketTypeProperties(TicketType type) {
  switch (type) {
    case TicketType.complain:
      return TicketTypeModel(
          type: S.current.complain,
          backgroundColor: ColorsManager.greyLighter,
          color: ColorsManager.greyLight);
    case TicketType.service:
      return TicketTypeModel(
          type: S.current.service,
          backgroundColor: ColorsManager.greyLighter,
          color: ColorsManager.greenPrimary);
    case TicketType.other:
      return TicketTypeModel(
          type: S.current.other,
          backgroundColor: ColorsManager.red.withOpacity(0.5),
          color: ColorsManager.red);
  }
}

InvoiceTypeModel getInvoiceTypeProperties(InvoiceType status) {
  switch (status) {
    case InvoiceType.rent:
      return InvoiceTypeModel(image: AssetsManager.money, text: S.current.rent);
    case InvoiceType.water:
      return InvoiceTypeModel(
          image: AssetsManager.water, text: S.current.water);
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:intl/intl.dart';

import '../navigator/navigator.dart';

Future<DateTime?> customShowDatePicker(
    {required TextEditingController controller, String? dateFormat}) async {
  DateTime? pickedDate = await showDatePicker(
    // locale: Languages.currentLanguage!.locale,
    context: Go.navigatorKey.currentContext!,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    initialEntryMode: DatePickerEntryMode.calendarOnly,
    lastDate: DateTime.now().add(Duration(days: 365)),
    // lastDate: DateTime(2100),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
              primary: ColorsManager.primary, // <-- SEE HERE
              onPrimary: ColorsManager.white, // <-- SEE HERE
              onSurface: ColorsManager.primary),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: ColorsManager.primary, // button text color
            ),
          ),
        ),
        child: child!,
      );
    },
  );
  if (pickedDate != null) {
    String formattedDate = DateFormat(dateFormat ?? 'EEE, M/d/y', 'ar')
        .format(pickedDate); // use your desired date format
    controller.text = formattedDate;
  }
  return pickedDate;
}

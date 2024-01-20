import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSized, FontWeight fontWeight, Color? color,
    {TextDecoration decoration = TextDecoration.none}) {
  return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSized,
      decoration: decoration);
}

TextStyle regularFont({required double fontSized, Color? color}) =>
    _getTextStyle(fontSized, FontWeightManager.regular, color);

TextStyle mediumFont({required double fontSized, Color? color}) =>
    _getTextStyle(fontSized, FontWeightManager.medium, color);

TextStyle semiBoldFont({required double fontSized, Color? color}) =>
    _getTextStyle(fontSized, FontWeightManager.semiBold, color);

TextStyle boldFont(
        {required double fontSized,
        Color? color,
        String fontFamily = FontManager.fontFamily}) =>
    _getTextStyle(fontSized, FontWeightManager.bold, color);

TextStyle strongBoldFont({required double fontSized, Color? color}) =>
    _getTextStyle(fontSized, FontWeightManager.strongBold, color);

TextStyle light({required double fontSized, Color? color}) =>
    _getTextStyle(fontSized, FontWeightManager.bold, color);

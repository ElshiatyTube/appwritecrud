import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    {required double fontSize,
    String? fontFamily,
    required Color color,
    required FontWeight fontWeight}) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}
// regular style

TextStyle regularStyle(
    {double fontSize = FontSizeManager.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: FontWeightManager.regular,
  );
}

// Light style

TextStyle lightStyle(
    {double fontSize = FontSizeManager.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: FontWeightManager.light,
  );
}

// medium style

TextStyle mediumStyle(
    {double fontSize = FontSizeManager.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: FontWeightManager.medium,
  );
}
// semibold style

TextStyle semiBoldStyle(
    {double fontSize = FontSizeManager.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: FontWeightManager.semiBold,
  );
}
// bold style

TextStyle boldStyle(
    {double fontSize = FontSizeManager.s12,
    required Color color,
    String? fontFamily}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: FontWeightManager.bold,
  );
}

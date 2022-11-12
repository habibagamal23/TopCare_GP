import 'package:flutter/material.dart';

import 'fontManger.dart';

TextStyle gettextstyle(double fontsize, FontWeight fontWeight, Color color) {
  return TextStyle(fontSize: fontsize, fontWeight: fontWeight, color: color);
}

// Style diversity for fonts   to Regular & light & medium & semibold & bold

TextStyle getRegularStyle(double size, Color color) {
  return gettextstyle(size, FontWeightManger.regular, color);
}

TextStyle getlightStyle(double size, Color color) {
  return gettextstyle(size, FontWeightManger.light, color);
}

TextStyle getmediumStyle(double size, Color color) {
  return gettextstyle(size, FontWeightManger.medium, color);
}

TextStyle getsemiboldStyle(double size, Color color) {
  return gettextstyle(size, FontWeightManger.semibold, color);
}

TextStyle getboldStyle({required double size, required Color color}) {
  return gettextstyle(size, FontWeightManger.bold, color);
}

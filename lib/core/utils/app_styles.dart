import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle proximaStyle({
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
  FontStyle? fontStyle,
  double? height,
  TextDecoration? decoration,
  Color? decorationColor,
  double? decorationThickness,
}) {
  return TextStyle(
    fontFamily: 'Proxima',
    fontSize: fontSize.sp,
    color: color,
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    height: height?.h,
    decoration: decoration,
    decorationColor: decorationColor ?? color,
    decorationThickness: decorationThickness,
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle googleTextStyle({
  required String fontFamily,
  double fontSize = 14,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
  FontStyle fontStyle = FontStyle.normal,
  double letterSpacing = 0,
  double height = 1.2,
}) {
  return GoogleFonts.getFont(
    fontFamily,
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    letterSpacing: letterSpacing,
    height: height,
  );
}
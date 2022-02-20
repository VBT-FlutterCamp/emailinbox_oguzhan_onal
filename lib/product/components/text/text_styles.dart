import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/colors.dart';

class TextStyles {
  final textStyle1 = GoogleFonts.montserrat(
    textStyle: const TextStyle(
      color: ConstColors.blackish,
      fontSize: 32,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    ),
  );
  final textStyle2 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    color: ConstColors.blackish,
    fontSize: 14,
  ));
  final textStyle3 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: ConstColors.blackish,
          fontSize: 16,
          fontWeight: FontWeight.w400));
  final textStyle4 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: ConstColors.white,
          fontSize: 32,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600));
  final textStyle5 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: ConstColors.white,
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400));
  final textStyle6 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: ConstColors.white,
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400));
  final textStyle7 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400));
  final textStyle8 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          color: ConstColors.gresh,
          fontSize: 14,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400));
}

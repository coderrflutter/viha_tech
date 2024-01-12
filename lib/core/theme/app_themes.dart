import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viha_tech/core/constants/my_colors.dart';

class AppThemes {
  static final light = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primarycolor),
      fontFamily: GoogleFonts.poppins().fontFamily,
      useMaterial3: true);

  static final dark = ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: ColorScheme.fromSeed(seedColor: MyColors.black),
      useMaterial3: true);
}

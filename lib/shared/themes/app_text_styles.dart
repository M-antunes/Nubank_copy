import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';

class TextStyles {
  static final gereeting = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );
  static final userName = GoogleFonts.roboto(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.secondary,
  );
  static final creditBillText = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.description,
  );
  static final creditBillNumber = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.bill,
  );
  static final creditLimit = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.description,
  );
  static final creditAvailableLimit = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.availableLimit,
  );
  static final balanceNumber = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.description,
  );
  static final desriptionText = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.description,
  );
  static final desriptionTextBold = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.description,
  );
  static final loanIconText = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
  static final insuranceText = GoogleFonts.roboto(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static final isuranceButton = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
  static final bottomIconText = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    color: AppColors.secondary,
  );
}

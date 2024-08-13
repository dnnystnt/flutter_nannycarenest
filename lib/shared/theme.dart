import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Determine The Color First
Color kPrimaryColor = Color(0xffFF7A8F);
Color kBackgroundOneColor = Color(0xffF6F8FC);
Color kBackgroundTwoColor = Color(0xffFFE9E9);
Color kWhiteColor = Color(0xffFFFFFF);
Color kTitleTextColor = Color(0xff031C2A);
Color kDescTextColor = Color(0xff6A6C6D);
Color kDescTimeTextColor = Color(0xff89959D);
Color kDividerlineColor = Color(0xffD8DCDE);

// Determine The TextStyle
TextStyle kPrimaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

TextStyle kTitleTextStyle = GoogleFonts.poppins(
  color: kTitleTextColor,
);

TextStyle kDescTextStyle = GoogleFonts.poppins(
  color: kDescTextColor,
);

TextStyle kDescTimeTextStyle = GoogleFonts.poppins(
  color: kDescTimeTextColor,
);

TextStyle kWhiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

// Determine the FontWeight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w600;
FontWeight extraBold = FontWeight.w700;
FontWeight black = FontWeight.w800;

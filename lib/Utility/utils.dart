
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

SizedBox buildSizeHeight(double height) {
  return SizedBox(
    height: height.h,
  );
}

SizedBox buildSizeWidth(double width) {
  return SizedBox(
    width: width.w,
  );
}

Text addTextPoppinsBold(
    { required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      double? height}) {
  return Text(
    text,
    style: openPoppinsBoldTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}

TextStyle openPoppinsBoldTextStyle() {
  return const TextStyle(fontFamily: 'Poppins-Bold');
}

Text addTextPoppinsLight(
    {required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      double? height}) {
  return Text(
    text,
    style: openPoppinsLightTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      decoration: textDecoration,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}

TextStyle openPoppinsLightTextStyle() {
  return const TextStyle(fontFamily: 'Poppins-Light');
}

Text addTextPoppinsMedium(
    {required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      double? height}) {
  return Text(
    text,
    style: openPoppinsMediumTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      decoration: textDecoration,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}
// ignore: non_constant_identifier_names
TextStyle openPoppinsMediumTextStyle() {
  return const TextStyle(fontFamily: 'Poppins-Medium');
}

Text addTextPoppinsRegular(
    {required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      double? height}) {
  return Text(
    text,
    style: openPoppinsRegularTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      decoration: textDecoration,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}

TextStyle openPoppinsRegularTextStyle() {
  return const TextStyle(fontFamily:'Poppins-Regular');
}

Text addTextPoppinsSemiBold(
    {required String text,
      required Color textColor,
      required double fontSize,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      double? height}) {
  return Text(
    text,
    style: openPoppinsSemiBoldTextStyle().copyWith(
      color: textColor,
      height: height ?? 1.2,
      decoration: textDecoration,
      fontSize: fontSize.sp,
    ),
    textAlign: textAlign,
  );
}


TextStyle openPoppinsSemiBoldTextStyle() {
  return const TextStyle(fontFamily:'Poppins-SemiBold');
}



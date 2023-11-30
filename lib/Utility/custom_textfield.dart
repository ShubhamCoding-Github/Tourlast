import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utility/utils.dart';



// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  bool? obscureText;
  String? hintText;
  double? textfieldWidth;
  String? lebleText;
  Color? fillColor;
  Color? txtColor;
  Color? borderColor;
  int? maxLine;
  int? maxLength;
  TextInputAction? textInputAction;
  List<TextInputFormatter>? textInputFormatter;
  TextInputType? textInputType;
  String? errorText;
  Widget? suffixIcon;
  double? borderRadius;
  Widget? prefixIcon;
  bool? readOnly;
  EdgeInsets? contentPadding;
  Function(String value)? onChanged;
  TextAlign? textAlign;
  TextStyle? txtStyle;
  String? prefixText;

  Function()? onTap;

  TextCapitalization? textCapitalization;

  String? Function(String? value)? validator;

  EdgeInsets? suffixIconPadding;

  CustomTextField(
      {Key? key,
        this.textfieldWidth,
        this.lebleText,
        this.suffixIconPadding,
        this.controller,
        this.obscureText,
        this.hintText,
        this.textInputAction,
        this.textInputType,
        this.textInputFormatter,
        this.suffixIcon,
        this.prefixIcon,
        this.errorText,
        this.borderRadius,
        this.fillColor,
        this.txtColor,
        this.onChanged,
        this.maxLine,
        this.borderColor,
        this.maxLength,
        this.contentPadding,
        this.readOnly,
        this.txtStyle,
        this.textAlign,
        this.prefixText,
        this.onTap,
        this.textCapitalization,
        this.validator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      obscuringCharacter: "⁕",
      onChanged: onChanged,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      maxLines: maxLine ?? 1,
      textAlign: textAlign ?? TextAlign.start,
      maxLength: maxLength,
      readOnly: readOnly ?? false,
      onTap: onTap,
      autocorrect: false,
      inputFormatters: textInputFormatter,
      validator: validator,
      style: txtStyle ??
          openPoppinsMediumTextStyle().copyWith(
              color: txtColor ??const Color(0xff474747), fontSize: 16.sp),
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.only(
                top: 5.sp, bottom: 25.sp, left: 13.sp, right: 13.sp),
        isDense: true,
        border: OutlineInputBorder(
            borderSide: BorderSide(
                color: borderColor ?? Colors.transparent)),
        hintText: hintText,
        errorText: errorText,
        counterStyle: const TextStyle(fontSize: 0.0),
        suffixIconConstraints: const BoxConstraints(maxHeight: 45),
        prefixIconConstraints: const BoxConstraints(maxHeight: 45),
        prefixText: prefixText,
        hintStyle: openPoppinsLightTextStyle()
            .copyWith(color: const Color(0xff474747), fontSize: 13.sp),
        labelText: lebleText,
        labelStyle: TextStyle(
            color: txtColor ?? const Color(0xff878787), fontSize: 13.sp),
        filled: true,
        suffixIcon: Padding(
          padding: suffixIconPadding ?? const EdgeInsets.all(10.0),
          child: suffixIcon,
        ),
        prefixStyle: openPoppinsLightTextStyle()
            .copyWith(color: const Color(0xffE49136), fontSize: 15.sp),
        prefixIcon: prefixIcon,
        errorMaxLines: 3,
        fillColor: fillColor ?? const Color(0xffEFF0F1),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: 1.0),
          borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
        ),
        enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(
              color: borderColor ?? Colors.transparent, width: 1.0),
          borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
        ),
        errorBorder: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide:
          const BorderSide(color: Colors.transparent, width: 1.0),
          borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.red, width: 1.0),
          // borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
        ),
      ),
    );
  }
}

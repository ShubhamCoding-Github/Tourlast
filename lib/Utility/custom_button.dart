import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/utils.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Color? color;
  Color? txtColor;
  Function() onPressed;
  final bool  isReversed;
  String? text;
  double? btnWidth;
  double? btnHeight;
  double? txtSize;
  TextStyle? textStyle;
  Widget? child;
  Color? borderColor;


  CustomButton(
      {Key? key,
         this.isReversed = false,
        this.color,
        this.text,
        this.txtColor,
        required this.onPressed,
        this.btnWidth,
        this.txtSize,
        this.btnHeight,
        this.textStyle,
        this.borderColor,
        this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: btnHeight ?? 56.0,
        width: btnWidth ?? Get.width,
        decoration: BoxDecoration(
          color: color ?? const Color (0xff0B5394),
          borderRadius: BorderRadius.circular(29.0),
          border: Border.all(color: borderColor ?? Colors.transparent, width: 1),

        ),
        child: Center(
          child: child ??
              Text(
                text ?? "",
                style: textStyle ??
                    openPoppinsLightTextStyle().copyWith(
                        color: txtColor ?? const Color(0xffFFFFFF),
                        fontSize: txtSize ?? 16.0,
                        height: 1.2),
              ),
        ),
      ),
    );
  }
}

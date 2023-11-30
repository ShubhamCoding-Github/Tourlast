import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/utils.dart';
import '../../controller/auth_controller.dart';
class OtpScreenSecand extends StatefulWidget {
  final  String mobile_no;
  final bool forgot;
  const OtpScreenSecand({super.key,required this.mobile_no,required this.forgot});

  @override
  State<OtpScreenSecand> createState() => _OtpScreenSecandState();
}

class _OtpScreenSecandState extends State<OtpScreenSecand> {

  AuthController controller=Get.put(AuthController());
  final _pinPutController = TextEditingController();
  int _counter = 0;
  late Timer _timer;
  bool resendStatus = false;

  @override
  void initState() {
    super.initState();
    // Create a timer that runs every 1 second
    init();
  }

  String getFormattedTimer() {
    return _counter.toString().padLeft(2, '0');
  }

  void init() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _counter++;
        if (_counter >= 52) {
          _timer.cancel();
          resendStatus = true;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to release resources
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(20.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSizeHeight(10),
                Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 30.sp,
                    )),
                buildSizeHeight(5),
                addTextPoppinsSemiBold(
                    text: 'OTP code', textColor: Colors.black, fontSize:22),
                buildSizeHeight(1),
                Text.rich(
                  style: openPoppinsLightTextStyle().copyWith(
                    color: const Color(0xff474747),
                    fontSize: 14,
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                          style: openPoppinsLightTextStyle().copyWith(),
                          text: 'We send the OTP code via email/phone number to '),
                      TextSpan(
                         text: widget.mobile_no,
                        style: const TextStyle(
                            color: Color(0xff0B5394),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                buildSizeHeight(3),
                PinCodeTextField(
                  controller: _pinPutController,
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  textStyle: openPoppinsLightTextStyle().copyWith(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.normal),
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  pinTheme: PinTheme(
                    borderRadius:BorderRadius.circular(16),
                    selectedFillColor: const Color(0xffEFF0F1),
                    activeFillColor: const Color(0xffEFF0F1),
                    shape: PinCodeFieldShape.box,
                    fieldWidth: 70.0,
                    fieldHeight: 58.0,
                    activeColor: const Color(0xffEFF0F1),
                    selectedColor: Colors.transparent,
                    inactiveFillColor: const Color(0xffEFF0F1),
                    inactiveColor: const Color(0xffEFF0F1),
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  cursorColor: const Color(0xffEFF0F1),
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                ),
                buildSizeHeight(2),
                CustomButton(
                  child: addTextPoppinsLight(
                      text: 'Verify',
                      textColor: const Color(0xffFFFFFF),
                      fontSize: 16.0),
                  onPressed: () {
                    controller.checkOtp(_pinPutController.text,widget.forgot,widget.mobile_no);
                    // Get.to(const ResetPasswordScreen());
                  },
                ),
                buildSizeHeight(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addTextPoppinsLight(
                        text: 'Wait for 00:${getFormattedTimer()}',
                        textColor: const Color(0xff5E5E5E),
                        fontSize: 13.0),
                    buildSizeWidth(1),
                    InkWell(
                        onTap: () {
                          if (resendStatus) {resendStatus = false;_counter = 0;
                            init();
                          }
                        },
                        child: addTextPoppinsLight(
                            text: 'Send Again',
                            textColor: const Color(0xff0B5394),
                            fontSize: 13.0)),
                  ],
                )
                ],
            ),
          ),
        ),

      ),
    );
  }
}

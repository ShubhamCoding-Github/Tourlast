import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';
import '../../controller/auth_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController controller=Get.put(AuthController());
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            buildSizeHeight(10),
            Center(
                child: Image.asset(
              'assets/images/logo.png',
              height: 30.sp,
            )),
            buildSizeHeight(10),
            addTextPoppinsSemiBold(
                text: 'Forgot password', textColor: Colors.black, fontSize:22),
            buildSizeHeight(1),
            addTextPoppinsRegular(
                text: 'We send the OTP code via email/phone number to ',
                textColor: const Color(0xff5E5E5E),
                fontSize: 14),
            buildSizeHeight(5),
            CustomTextField(
              controller:controller.mobileNo.value,
              textInputType: TextInputType.emailAddress,
              hintText: 'Email or Phone Number',
            ),
            buildSizeHeight(3),
            CustomButton(
              child: addTextPoppinsLight(
                  text: 'Submit',
                  textColor: const Color(0xffFFFFFF),
                  fontSize: 16.0),
              onPressed: () {
                controller.forgotPassword();
               // Get.to(const OtpScreenSecand());
              },
            ),
          ]),
        ),
      ),
    ));
  }
}

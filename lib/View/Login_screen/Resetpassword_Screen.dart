import 'package:Tourlast/controller/change_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ChangePasswordController controller =Get.put(ChangePasswordController());
    return  SafeArea(child: Scaffold(
      body:Padding(
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
              buildSizeHeight(10),
              addTextPoppinsSemiBold(
                  text: 'Reset password',
                  textColor: Colors.black,
                  fontSize: 22),
              addTextPoppinsLight(
                  text: 'Enter a new password to update your password',
                  textColor: const Color(0xff5E5E5E),
                  fontSize: 15),
              buildSizeHeight(2),
              CustomTextField(
                controller: controller.password,
                hintText: 'Password',
              ),
              buildSizeHeight(2),
              CustomTextField(
                controller: controller.confirmPassword,
                hintText: 'Confirm Password',
                suffixIcon:
                Image.asset('assets/images/visible@3x.png', height: 15.sp),
              ),
              buildSizeHeight(2),
              CustomButton(
                child: addTextPoppinsLight(
                    text: 'Submit',
                    textColor: const Color(0xffFFFFFF),
                    fontSize: 16.0),
                onPressed: () {
                 controller.changePassword();
                  // Get.to(const BottomNavBar());
                },
              ),
            ],
          ),
        ),
      ) ,
    ));
  }
}

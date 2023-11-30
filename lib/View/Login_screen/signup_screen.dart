import 'package:Tourlast/View/Login_screen/login_screen.dart';
import 'package:Tourlast/View/termconditions_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../Utility/utils.dart';
import '../../controller/auth_controller.dart';

// ignore: must_be_immutable
class SignupScreen extends StatelessWidget {
     AuthController controller=Get.put(AuthController());
    SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSizeHeight(4),
              Center(
                  child: Image.asset(
                'assets/images/logo.png',
                height: 30.sp,
              )),
              buildSizeHeight(3),
              addTextPoppinsSemiBold(
                  text: 'Sign up', textColor: Colors.black, fontSize:22),
              buildSizeHeight(1),
              addTextPoppinsLight(
                  text: 'Please complete all information to create your account',
                  textColor: const Color(0xff5E5E5E),
                  fontSize: 16.0),
              buildSizeHeight(2),
              CustomTextField(
               controller:controller.fullName.value,
                textInputType: TextInputType.name,
                hintText: 'Name',
              ),
              buildSizeHeight(2),
              CustomTextField(
                 controller:controller.email.value,
                textInputType: TextInputType.emailAddress,
                hintText: 'Email',
              ),
              buildSizeHeight(2),
              CustomTextField(
               controller:controller.mobileNo.value,
                textInputType: TextInputType.number,
                hintText: 'Phone Number',
              ),
              buildSizeHeight(2),
              CustomTextField(
                controller:controller.password.value,
                textInputType: TextInputType.visiblePassword,
                suffixIcon:
                    Image.asset('assets/images/visible@3x.png', height: 15.sp),
                hintText: 'Password',
              ),
              buildSizeHeight(2),
              CustomButton(
                child: addTextPoppinsLight(
                    text: 'Sign in',
                    textColor: const Color(0xffFFFFFF),
                    fontSize: 16.0),
                onPressed: () {
                    controller.signUp();
                  // Get.to( const OtpScreen());
                },
              ),
              buildSizeHeight(2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.white,
                        Color(0xffDEDEDE),
                      ])),
                      height:0.2.h,
                    ),
                  ),

                  addTextPoppinsLight(
                      text: 'or Sign in with',
                      textColor: const Color(0xff8A8A8A),
                      fontSize: 14),

                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xffDEDEDE),
                        Colors.white,
                      ])),
                      height:0.2.h,
                    ),
                  ),
                ],
              ),
              buildSizeHeight(2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 8.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffECECEC), width: 1),
                      borderRadius: BorderRadiusDirectional.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/search@3x.png'),
                    ),
                  ),
                  Container(
                    height: 8.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffECECEC), width: 1),
                      borderRadius: BorderRadiusDirectional.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/_x30_1._Facebook@3x.png'),
                    ),
                  ),
                  Container(
                    height: 8.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffECECEC), width: 1),
                      borderRadius: BorderRadiusDirectional.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/apple-logo@3x.png'),
                    ),
                  ),
                ],
              ),
              buildSizeHeight(2),
              Center(
                child: Text.rich(
                  style: openPoppinsLightTextStyle().copyWith(
                    color: const Color(0xff474747),
                    fontSize: 15.sp,
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                          style: openPoppinsLightTextStyle().copyWith(),
                          text: 'Already have an account?'),
                       TextSpan(
                        recognizer: TapGestureRecognizer()..onTap =(){
                          Get.to(LoginScreen());
                        },
                        text: 'Login',
                        style: const TextStyle(
                            color: Color(0xff0B5394),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              buildSizeHeight(1),
              Center(child: InkWell(
                onTap: () {
                  Get.to(const TermConditionsScreen());
                },
                  child: addTextPoppinsRegular(text: 'Term and Condition', textColor: const Color(0xff0B5394), fontSize:14.0)))
            ],
          ),
        ),
      ),
    ));
  }
}

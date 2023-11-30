import 'package:Tourlast/View/Login_screen/forgotpassword_screen.dart';
import 'package:Tourlast/View/dashboardscreen/bottom_nav_bar.dart';
import 'package:Tourlast/controller/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/custom_textfield.dart';
import '../../utility/utils.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {

    LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController controller=Get.put(AuthController());
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
              Align(
                alignment: Alignment.topRight,
                child:  Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffA0D3FE),
                      borderRadius: BorderRadius.circular(18)),
                  child: InkWell(
                    onTap: () {
                      Get.to(const BottomNavBar());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right:20,top: 5,bottom: 5),
                      child: addTextPoppinsMedium(
                          text: 'SKIP',
                          textColor: const Color(0xff0B5394),
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
              buildSizeHeight(5),
              Center(
                  child: Image.asset(
                'assets/images/logo.png',
                height: 30.sp,
              )),
              buildSizeHeight(5),
              addTextPoppinsSemiBold(
                  text: 'Welcome back!',
                  textColor: Colors.black,
                  fontSize: 22),
              addTextPoppinsLight(
                  text: 'Sign in to your account',
                  textColor: const Color(0xff5E5E5E),
                  fontSize: 16),
              buildSizeHeight(2),
              CustomTextField(
                controller: controller.email.value,
                hintText: 'Email or Phone Number',
              ),
              buildSizeHeight(3),
              CustomTextField(
              controller:controller.password.value,
                hintText: 'Password',
                suffixIcon:
                    Image.asset('assets/images/visible@3x.png', height: 15.sp),
              ),
              buildSizeHeight(3),
              Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(const ForgotPasswordScreen());
                    },
                    child: addTextPoppinsRegular(
                        text: 'Forgot password?',
                        textColor: const Color(0xff0B5394),
                        fontSize: 16.sp),
                  )),
              buildSizeHeight(3),
              CustomButton(
                child: addTextPoppinsLight(
                    text: 'Sign in',
                    textColor: const Color(0xffFFFFFF),
                    fontSize: 16.0),
                onPressed: () {
                  controller.login();
                  // Get.to( SignupScreen());
                },
              ),
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
                      height: 0.2.h,
                    ),
                  ),
                  buildSizeHeight(5),
                  addTextPoppinsLight(
                      text: 'or Sign in with',
                      textColor: const Color(0xff8A8A8A),
                      fontSize: 13),
                  buildSizeWidth(1),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xffDEDEDE),
                        Colors.white,
                      ])),
                      height: 0.2.h,
                    ),
                  ),
                ],
              ),
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
                      child: Image.asset('assets/images/search@3x.png',height: 10.sp),
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
              buildSizeHeight(5),
              Center(
                child: Text.rich(
                  style: openPoppinsLightTextStyle().copyWith(
                    color: const Color(0xff474747),
                    height: 2,
                    fontSize: 15.sp,
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                          style: openPoppinsLightTextStyle().copyWith(),
                          text: 'Don\'t have an account?'),
                       TextSpan(
                        text: 'Register',
                        recognizer: TapGestureRecognizer()..onTap =(){
                          Get.to( SignupScreen());
                        },
                        style: const TextStyle(
                            color: Color(0xff0B5394),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Utility/custom_button.dart';
import '../../Utility/utils.dart';
import '../Login_screen/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/Mask Group 42@3x.png',
                fit: BoxFit.fill,
              ),
              Center(
                child: Image.asset(
                  'assets/images/WhatsApp Image 2023-08-16 at 10.59.46 AM@3x.png',
                  height: 40.sp,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [0.1, 0.5, 0.9],
                          colors: [
                            Colors.white.withOpacity(1.0),
                            Colors.white.withOpacity(.7),
                            Colors.white.withOpacity(.1)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              addTextPoppinsBold(
                  text: 'Explore your best place',
                  textColor: Colors.black,
                  fontSize: 30.0,
                  textAlign: TextAlign.center),
              buildSizeHeight(2),
              addTextPoppinsRegular(
                  text: 'Easy to book flight, Place and many more',
                  textColor: const Color(0xff5E5E5E),
                  fontSize: 15.0,
                  textAlign: TextAlign.center),
              buildSizeHeight(3),
              CustomButton(
                child: addTextPoppinsLight(
                    text: 'Get Started!',
                    textColor: const Color(0xffFFFFFF),
                    fontSize: 16.0),
                onPressed: () {
                  Get.to( LoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

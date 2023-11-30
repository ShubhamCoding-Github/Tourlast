import 'dart:async';
import 'package:Tourlast/View/splash_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../storage/base_shared_preference.dart';
import '../../storage/sp_keyes.dart';
import '../dashboardscreen/bottom_nav_bar.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   @override
   void initState() {
    super.initState();
    check();
  }
  check()async{
    bool ? isLogin= await BaseSharedPreference().getBool(SpKeys().loginSave);
    print('login----$isLogin');
    if(isLogin??false){
    Get.offAll(const BottomNavBar());
    }else{
       Timer(
         const Duration(seconds: 3),
             () => Navigator.pushReplacement(context,
             MaterialPageRoute(builder: (context) => const OnboardingScreen())));
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/WhatsApp Image 2023-08-16 at 10.59.46 AM@3x.png',height: 40.sp,))
          ],
        ));
  }
}

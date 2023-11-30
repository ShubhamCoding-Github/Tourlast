import 'package:Tourlast/View/Login_screen/Resetpassword_Screen.dart';
import 'package:Tourlast/View/Login_screen/login_screen.dart';
import 'package:Tourlast/View/Login_screen/otp_ScreenSecand.dart';
import 'package:Tourlast/View/Login_screen/otp_screen.dart';
import 'package:Tourlast/View/dashboardscreen/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Utility/base_overlays.dart';
import '../backend/services/api_end_point.dart';
import '../backend/services/base_api.dart';
import '../storage/base_shared_preference.dart';
import '../storage/sp_keyes.dart';
import 'package:dio/dio.dart' as dio;


class AuthController extends GetxController {
  late Rx<TextEditingController> fullName;
  late Rx<TextEditingController> mobileNo;
  late Rx<TextEditingController> email;
  late Rx<TextEditingController> password;
  bool loginSave = true;
  RxBool isVerified = false.obs;
  @override
  void onInit() {
    super.onInit();
    fullName = TextEditingController().obs;
    mobileNo = TextEditingController().obs;
    email = TextEditingController().obs;
    password = TextEditingController().obs;
  }


  /// LOGIN API
  login() async {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    Map<String, dynamic> data = {
      "mobile_or_email": email.value.text,
      "password": password.value.text,
      "login_type": "normal"
    };
       await BaseAPI().post(url: ApiEndPoints().login, data: data).then((value) {
        if (value?.data['success'] == false) {
          BaseOverlays().showSnackBar(message: value?.data['message'], title: "Error");
        }
        else {
          print('login----$value');
          BaseSharedPreference().setInt(SpKeys().userId, value!.data['data']['id'] ?? "");
          BaseSharedPreference().setString(SpKeys().apiToken, value.data['data']['token'] ?? "");
          BaseSharedPreference().setString(SpKeys().userName, value.data['data']['name'] ?? "");
          BaseSharedPreference().setString(SpKeys().userEmail, value.data['data']['email'] ?? "");
          BaseSharedPreference().setString(SpKeys().userPhoneNo, value.data['data']['mobile_no'] ?? "");
          BaseSharedPreference().setString(SpKeys().userprofile, value.data['data']['profile_image'] ?? "");
          BaseSharedPreference().setString(SpKeys().massage, value.data['data']['message'] ?? "");
          BaseSharedPreference().setBool(SpKeys().loginSave,true);
          print("Stored userId: ${value.data['data']['id']}");

          BaseSharedPreference().setBool(SpKeys().loginSave,true);
          BaseOverlays().showSnackBar(message: value.data['message'], title: "Success");
          Get.offAll(const BottomNavBar());
        }
    });
  }


/// SIGNUP API
  signUp() async {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    Map<String, dynamic> data = {
      "name": fullName.value.text,
      "email": email.value.text,
      "mobile_no": mobileNo.value.text,
      "password": password.value.text,
      // "login type":
    };
    await BaseAPI()
        .post(url: ApiEndPoints().register, data: data)
        .then((value) {
      print('value----');
      print("success---:${value?.data['success']}");
      print("message---:${value?.data['message']}");
      if (value?.data['success'] == false) {
        BaseOverlays().showSnackBar(message: value?.data['message'], title: "Error");
      }
      else {
        BaseSharedPreference().setBool(SpKeys().loginSave,true);
        BaseOverlays().showSnackBar(message: value?.data['message'], title: "Success");
        Get.to(OtpScreen(mobile_no: mobileNo.value.text));
      }
    });
  }


  ///  VERIFY OTP API
  checkOtp(String otp,bool forgot, String mobile_no) async {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    dio.FormData param = dio.FormData.fromMap({
      "mobile_no": mobileNo.value.text,
      "otp": otp,
      "country_code": '+91',
    });
    await BaseAPI()
        .post(url: ApiEndPoints().otpVerify, data:param, showLoader: true)
        .then((value) {
         print("otp----${value?.data['success']}");
         if (value?.data['success'] == false) {
          BaseOverlays().showSnackBar(message: value?.data['message'], title: "Error");
        }
       else {
        BaseOverlays().showSnackBar(message: value?.data['message'], title: "Success");
        if(forgot){
         Get.to(const ResetPasswordScreen());
       }else{
          Get.offAll(LoginScreen());
      }
      }
    }
    );
  }

  /// SEND OTP API
 forgotPassword () async {
   FocusScope.of(Get.context!).requestFocus(FocusNode());
   dio.FormData param = dio.FormData.fromMap({
     "mobile_no": mobileNo.value.text,
     "country_code": '+91'
   });
   await BaseAPI().post(url: ApiEndPoints().sendOtp, data: param,)
       .then((value) {
      print("otpData----${value?.data['success']}");
      if (value?.data['success'] == false) {
       BaseOverlays().showSnackBar(
           message: value?.data['message'], title: "Error");
     }
     else {
       BaseOverlays().showSnackBar(
           message: value?.data['message'], title: "Success");
        Get.to(OtpScreenSecand(mobile_no:mobileNo.value.text, forgot: true));
     }
   }
   );
 }

}
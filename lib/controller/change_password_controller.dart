import 'package:Tourlast/View/Login_screen/login_screen.dart';
import 'package:Tourlast/backend/services/api_end_point.dart';
import 'package:Tourlast/backend/services/base_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utility/base_overlays.dart';

class  ChangePasswordController extends GetxController{
  TextEditingController password=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();

  changePassword()async{
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    Map<String, dynamic> data = {
      "password": password.text,
      "confirmation_password": confirmPassword.text,
    };
    await BaseAPI().post(url: ApiEndPoints().changePassword, data: data,showLoader: true).then((value) {
      if (value?.statusCode == 200) {
        Get.to(LoginScreen());
        BaseOverlays().showSnackBar(message:"Password updated", title: "Success");
      } else {
        BaseOverlays().showSnackBar(message:"Something Went Wrong!!!", title: "Error");
      }
    });
  }
}
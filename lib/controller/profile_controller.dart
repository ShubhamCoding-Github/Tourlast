import 'dart:io';
import 'package:Tourlast/View/Login_screen/login_screen.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Utility/base_overlays.dart';
import '../backend/models/profile_update_model.dart';
import '../backend/services/api_end_point.dart';
import '../backend/services/base_api.dart';
import '../storage/base_shared_preference.dart';
import '../storage/sp_keyes.dart';

class ProfileController extends GetxController{
  Rx<EditProfileResponse> data=EditProfileResponse().obs;
  Rx<File> ?selectedFile = File("").obs;
  RxString  imageData =''.obs;
  RxString  profilePath =''.obs;

/// profileUpdate API

  profileUpdate(String name,String email,String mobileNo ) async {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    dio.FormData data = dio.FormData.fromMap({
      "name": name,
      "email": email,
      "country_code":"+91",
      "mobile_no": mobileNo,
      "address":"",
    });
    if ((selectedFile?.value.path??"").isNotEmpty) {
      data.files.add (MapEntry("profile_image" ,await dio.MultipartFile.fromFile(selectedFile?.value.path??"", filename: selectedFile?.value.path.split("/").last??"")));
    }
    await BaseAPI().post(url: ApiEndPoints().getProfile, data: data).then((value) {
      EditProfileResponse response = EditProfileResponse.fromJson(value?.data);
      print("Stored name: ${response.data?.name}");
      if (value?.statusCode == 200) {
        BaseSharedPreference().setString(SpKeys().userName, response.data?.name ?? "");
        BaseSharedPreference().setString(SpKeys().userEmail,response.data?.email ?? "");
        BaseSharedPreference().setString(SpKeys().userPhoneNo,response.data?.mobileNo ??"");
        Get.back();
        if ((response.message ?? "").isNotEmpty) {
          BaseOverlays().showSnackBar(message: response.message!, title: "Success");
        }
      } else {
        BaseOverlays().showSnackBar(message: response.message ?? "", title: "Error");
      }
    });
  }

  ///LogOut API
  logout() async {
    await BaseAPI().post(url: ApiEndPoints().logOut, data: data).then((value) {
      if (value?.statusCode == 200) {
        BaseOverlays()
            .showSnackBar(message: "LogOut Successfully", title: "Success");
       Get.offAll(LoginScreen());
        BaseSharedPreference().setBool(SpKeys().loginSave,false);
        BaseSharedPreference().clearLoginSession();
      } else {
        BaseOverlays()
            .showSnackBar(message: "Something Went Wrong!!", title: "Error");
      }
    });
  }
}
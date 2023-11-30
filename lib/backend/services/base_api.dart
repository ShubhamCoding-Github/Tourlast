import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Utility/base_overlays.dart';
import '../../storage/base_shared_preference.dart';
import '../../storage/sp_keyes.dart';
import 'package:get/get.dart' as X;


class BaseAPI {
  late Dio _dio;
  static final BaseAPI _singleton = BaseAPI._internal();

  factory BaseAPI() {
    return _singleton;
  }

  BaseAPI._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://stage.tasksplan.com/tourlast/public/api/v1/",
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    if (!kReleaseMode) {
      _dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    }
    _dio.interceptors.add(
        LogInterceptor(responseBody: true, request: true, requestBody: true));
  }

  /// GET Method
  Future<Response?> get({required String url, Map<String, dynamic>? queryParameters,bool? showLoader,bool focusOff=true}) async {
    if (await checkInternetConnection()) {
      try {
        BaseOverlays().showLoader(showLoader: showLoader??true);
        focusOff ? FocusScope.of(X.Get.context!).requestFocus(FocusNode()):null;
        final String token = await BaseSharedPreference().getString(SpKeys().apiToken);
        final response = await _dio.get(url, options: Options(headers: {"Authorization": "Bearer $token"}),queryParameters: queryParameters,);
        BaseOverlays().dismissOverlay(showLoader: showLoader??true);
        return response;
      } on DioError catch (e) {
        BaseOverlays().dismissOverlay(showLoader: showLoader??true);
        _handleError(e);
        rethrow;
      }
    }else{
      BaseOverlays().showSnackBar(message:"No internet Connection");
      return null;
    }
  }

  /// POST Method
  Future<Response?> post({required String url, dynamic data, Map<String, dynamic>? headers,bool? showLoader}) async {
    if (await checkInternetConnection()) {
      try {
        BaseOverlays().showLoader(showLoader: showLoader);
        FocusScope.of(X.Get.context!).requestFocus(FocusNode());
        final String token = await BaseSharedPreference().getString(SpKeys().apiToken)??"";
        final response = await _dio.post(url, data: data, options: Options(headers: headers??{"Authorization": "Bearer $token"}));
        BaseOverlays().dismissOverlay(showLoader: showLoader);
        return response;
      } on DioError catch (e) {
        BaseOverlays().dismissOverlay(showLoader: showLoader);
        _handleError(e);
        rethrow;
      }
    }else{
      print("no internet");
      BaseOverlays().showSnackBar(message:"No internet Connection");
      return null;
    }
  }

  /// PATCH Method
  Future<Response?> patch({required String url, dynamic data, Map<String, dynamic>? headers,bool? concatUserId}) async {
    if (await checkInternetConnection()) {
      try {
        BaseOverlays().showLoader();
        FocusScope.of(X.Get.context!).requestFocus(new FocusNode());
        final String token = await BaseSharedPreference().getString(SpKeys().apiToken)??"";
        final String userId = await BaseSharedPreference().getString(SpKeys().userId)??"";
        final response = await _dio.patch(url+((concatUserId??false) ? userId : ""), data: data, options: Options(headers: headers??{"Authorization": "Bearer $token"}));
        BaseOverlays().dismissOverlay();
        return response;
      } on DioError catch (e) {
        BaseOverlays().dismissOverlay();
        _handleError(e);
        rethrow;
      }
    }else{
      // BaseDialogs().dismissLoader();
      BaseOverlays().showSnackBar(message:"No internet Connection");
      return null;
    }
  }

  ///PUT Method
  Future<Response?> put({required String url, dynamic data, Map<String, dynamic>? headers}) async {
    if (await checkInternetConnection()) {
      try {
        BaseOverlays().showLoader();
        FocusScope.of(X.Get.context!).requestFocus(FocusNode());
        final String token = await BaseSharedPreference().getString(SpKeys().apiToken)??"";
        final response = await _dio.put(url, data: data, options: Options(headers: headers??{"Authorization": "Bearer $token"}));
        BaseOverlays().dismissOverlay();
        return response;
      } on DioError catch (e) {
        BaseOverlays().dismissOverlay();
        _handleError(e);
        rethrow;
      }
    }else{
      BaseOverlays().showSnackBar(message:"No internet Connection");
      return null;
    }
  }

  /// Delete Method
  Future<Response?> delete({required String url, Map<String, dynamic>? headers, dynamic data}) async {
    FocusScope.of(X.Get.context!).requestFocus(FocusNode());
    if (await checkInternetConnection()) {
      try {
        BaseOverlays().showLoader();
        final String token = await BaseSharedPreference().getString(SpKeys().apiToken);
        final response = await _dio.delete(url, data: data, options: Options(headers: headers??{"Authorization": "Bearer $token"}));
        BaseOverlays().dismissOverlay();
        return response;
      } on DioError catch (e) {
        BaseOverlays().dismissOverlay();
        _handleError(e);
        rethrow;
      }
    }else{
      // BaseDialogs().dismissLoader();
      BaseOverlays().showSnackBar(message:"No internet Connection");
      return null;
    }
  }

  /// Download Method
  Future<Response> download(String url, String savePath, {Map<String, dynamic>? headers, void Function(int, int)? onReceiveProgress}) async {
    checkInternetConnection();
    try {
      final response = await _dio.download(url, savePath,
          options: Options(headers: headers),
          onReceiveProgress: onReceiveProgress);
      return response;
    } on DioError catch (e) {
      _handleError(e);
      rethrow;
    }
  }
  int _secondsRemaining = 20;
  /// Check Internet Connection
  Future<bool> checkInternetConnection() async {
    Timer timer;
    timer=Timer.periodic(const Duration(seconds: 1), (Timer timer){
      _secondsRemaining--;
      print("timer--||$_secondsRemaining");
      if(_secondsRemaining==10){
        print("slow internet");
        BaseOverlays().warningShowSnackBar(message:"Slow internet connection detect");
        timer.cancel();
      }
      if(_secondsRemaining==0){
        timer.cancel();
      }
    });
    try {
      log("Checking internet connection");
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        timer.cancel();
        return true;
      }else{
        log("No internet connection");
        timer.cancel();
        return false;
      }
    } on SocketException catch (_) {
      timer.cancel();
      return false;
    }
  }


  Future<Response> postFormData(String url, Map<String, dynamic> formData, {Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(url,
          data: FormData.fromMap(formData), options: Options(headers: headers));
      return response;
    } on DioError catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  Future<Response> uploadFile(File file, String url,
      {Function(int, int)? onSendProgress}) async {
    try {
      final formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(file.path),
      });
      final response = await _dio.post(
        url,
        data: formData,
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: "multipart/form-data",
          },
        ),
        onSendProgress: onSendProgress,
      );
      return response;
    } on DioError catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  Future<Response> uploadMultipleFiles(List<File> files, String url, {Function(int, int)? onSendProgress}) async {
    final dio = Dio();

    final formData = FormData();

    for (int i = 0; i < files.length; i++) {
      final file = files[i];
      formData.files.add(MapEntry("file$i", await MultipartFile.fromFile(file.path)));
    }

    return dio.post(url, data: formData, onSendProgress: onSendProgress);
  }

  void _handleError(DioException e) {
    log('erorr--->>>${e.type}');
    if (e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.receiveTimeout || e.type == DioExceptionType.sendTimeout) {
      log('Timeout Error: ${e.message}');
    } else if (e.type == DioExceptionType.badResponse) { //todo bad response  chnage to other
      log('Bad Response Error: ${e.message}');
      try{
        BaseOverlays().showSnackBar(message: (e.response?.data['message']));
      }catch(error){
        BaseOverlays().showSnackBar(message:e.message??'');
      }
    } else if (e.type == DioExceptionType.cancel) {
      // Handle cancel error
      log('Request Cancelled Error: ${e.message}');
    } else {
      // Handle other errors
      log('Unknown Error: ${e.message}');
    }
  }
}



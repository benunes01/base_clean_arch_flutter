import "dart:developer";

import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:flutter_easyloading/flutter_easyloading.dart";
import "package:flutter_modular/flutter_modular.dart";

import "../utils/globals.dart";
import "../utils/manager_token.dart";

class Client {
  late Dio _dio;

  Client() {
    _dio = Dio();
    _dio.interceptors.add(ApiInterceptors());
    _dio.options.baseUrl = "";
    _dio.options.sendTimeout = const Duration(seconds: 60);
    _dio.options.connectTimeout = const Duration(seconds: 60);
    _dio.options.receiveTimeout = const Duration(seconds: 60);
  }

  Dio get dio => _dio;
}

class ApiInterceptors extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    EasyLoading.show(status: 'Carregando...');
    log('REQUEST[${options.method}] => PATH: ${options.path}');

    String? token = await ManagerToken().getValue() ?? '';
    if(token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    EasyLoading.dismiss();
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    log('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path} - ${err.message}');
    EasyLoading.dismiss();
    if(err.response != null && err.response!.statusCode == 401) {
      await ManagerToken().resetValue();
      Modular.to.pushReplacementNamed("/");
    }
    snackbarKey.currentState?.showSnackBar(SnackBar(content: Text(err.response!.data['message'])));
    return super.onError(err, handler);
  }
}
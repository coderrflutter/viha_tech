import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../../../utils/utils.dart';
import 'api_constants.dart';
import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;
  ApiClient() {
    baseOptions =
        BaseOptions(baseUrl: ApiConstant.mainurl + ApiConstant.weburl);
    dio = Dio(baseOptions);
  }
  Options options = Options();

  /// Get Request
  Future<Response> getRquest({
    required String path,
    bool isTokenRequired = false,
  }) async {
    if (isTokenRequired == true) {
      var token = await Utils.getToken();
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Token $token"});

      //  print(token);
    }

    try {
      debugPrint("**************API REQUEST****************");
      debugPrint("REQUEST URL: ${baseOptions.baseUrl + path}");
      var response = await dio.get(path, options: Options());
      debugPrint("**************API RESPONSE****************");

      debugPrint(response.statusCode.toString());
      debugPrint(" DATA : ${response.data}");

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  ///post Request
  Future<Response> postRquest(
      {required String path,
      required dynamic body,
      bool isTokenRequired = false}) async {
    if (isTokenRequired == true) {
      var token = await Utils.getToken();
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Token $token"});
    }

    try {
      debugPrint("**************API REQUEST****************");
      debugPrint("REQUEST URL: ${baseOptions.baseUrl + path}");
      var response = await dio.post(path, data: body, options: options);
      debugPrint("**************API RESPONSE****************");
      debugPrint(body.toString());

      debugPrint(response.statusCode.toString());
      debugPrint(" DATA : ${response.data}");
      // print(body);

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

//delete requesst
  Future<Response> deleteRquest(
      {required String path, bool isTokenRequired = false}) async {
    if (isTokenRequired == true) {
      var token = await Utils.getToken();
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Token $token"});
    }

    try {
      debugPrint("**************API REQUEST****************");
      debugPrint("REQUEST URL: ${baseOptions.baseUrl + path}");
      var response = await dio.delete(path, options: options);
      debugPrint("**************API RESPONSE****************");

      debugPrint(response.statusCode.toString());
      debugPrint(" DATA : ${response.data}");

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  // put Request

  Future<Response> putRquest(
      {required String path,
      required dynamic body,
      bool isTokenRequired = false}) async {
    if (isTokenRequired == true) {
      var token = await Utils.getToken();
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Token $token"});
    }

    try {
      debugPrint("**************API REQUEST****************");
      debugPrint("REQUEST URL: ${baseOptions.baseUrl + path}");
      var response = await dio.put(path, data: body, options: options);
      debugPrint("**************API RESPONSE****************");

      debugPrint(response.statusCode.toString());
      debugPrint(" DATA : ${response.data}");

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}

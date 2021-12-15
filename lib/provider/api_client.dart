import 'dart:async';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_gen/provider/send_code_request.dart';
import 'package:test_gen/provider/send_code_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "")
abstract class ApiClient {
  factory ApiClient({String baseUrl = ""}) {
    Dio dio = Dio(BaseOptions(followRedirects: false));
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return client;
    };
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true, requestHeader: true, request: true, error: true));
    dio.options = BaseOptions(
      receiveTimeout: 30000,
      connectTimeout: 30000,
      sendTimeout: 30000,
    );


    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @POST("/v1/user/send-code")
  Future<SendCodeResponse> sendCode(@Body() SendCodeRequest request);
}

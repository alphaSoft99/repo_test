import 'package:flutter/material.dart';
import 'package:repo_annotation/repo_annotation.dart';
import 'package:test_gen/provider/api_client.dart';
import 'package:test_gen/provider/response_handler.dart';
import 'package:test_gen/provider/send_code_request.dart';
import 'package:test_gen/provider/send_code_response.dart';
import 'package:test_gen/provider/server_error.dart';
import 'package:dio/dio.dart';

part 'remote_data_source.g.dart';

@subGen
mixin RemoteDataSource {
  Future<ResponseHandler<SendCodeResponse>> sendCode(
      {required SendCodeRequest request});
}
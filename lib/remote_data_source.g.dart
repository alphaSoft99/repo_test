// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_data_source.dart';

// **************************************************************************
// SubclassGenerator
// **************************************************************************

class RemoteDataSourceImpl with RemoteDataSource {
  final ApiClient _apiClient;
  RemoteDataSourceImpl(this._apiClient);

  @override
  Future<ResponseHandler<SendCodeResponse>> sendCode(
      {required SendCodeRequest request}) async {
    SendCodeResponse? response;
    try {
      response = await _apiClient.sendCode(
        request,
      );
    } catch (error, stacktrace) {
      debugPrint("Exception occurred: $error stacktrace: $stacktrace");
      return ResponseHandler()
        ..setException(
          ServerError.withError(error: error as DioError),
        );
    }
    return ResponseHandler()..data = response;
  }
}

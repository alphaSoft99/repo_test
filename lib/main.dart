import 'package:test_gen/provider/api_client.dart';
import 'package:test_gen/provider/send_code_request.dart';
import 'package:test_gen/remote_data_source.dart';

void main() {

  final RemoteDataSource s = RemoteDataSourceImpl(ApiClient());

  print(s.sendCode(request: SendCodeRequest()));
}

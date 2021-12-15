class SendCodeResponse {
  SendCodeResponse({
    this.status,
    this.message,
    this.data,
  });

  SendCodeResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
  }
  String? status;
  String? message;
  dynamic data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['data'] = data;
    return map;
  }
}

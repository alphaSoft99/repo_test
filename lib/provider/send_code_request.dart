class SendCodeRequest {
  SendCodeRequest({
    this.phoneNumber,
    this.hash,
  });

  SendCodeRequest.fromJson(dynamic json) {
    phoneNumber = json['phone_number'];
    hash = json['hash'];
  }
  String? phoneNumber;
  String? hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phone_number'] = phoneNumber;
    map['hash'] = hash;
    return map;
  }
}

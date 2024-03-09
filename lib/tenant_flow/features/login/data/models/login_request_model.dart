class LoginRequestModel {
/*
"phoneNumber": "1093739627",
    "password": "jkER%43@11j",
    "deviceId": "asd",
    "deviceType": "ios",
    "fcmToken": "sadgkasdsadg.sagsadgsdgaswetwtwew332.dgasd23342"
 */

  String? phoneNumber;
  String? password;
  String? deviceId;
  String? deviceType;
  String? fcmToken;

  LoginRequestModel(
      {this.phoneNumber,
      this.password,
      this.deviceId,
      this.deviceType,
      this.fcmToken});

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    return LoginRequestModel(
      phoneNumber: json['phoneNumber'],
      password: json['password'],
      deviceId: json['deviceId'],
      deviceType: json['deviceType'],
      fcmToken: json['fcmToken'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "phoneNumber": phoneNumber,
      "password": password,
      "deviceId": deviceId,
      "deviceType": deviceType,
      "fcmToken": fcmToken
    };
  }
  
}
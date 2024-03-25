import 'package:json_annotation/json_annotation.dart';

part 'auth_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthModel {
  AuthModelData? data;
  String? message;

  AuthModel({this.data, this.message});

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthModelData {
  UserModel? user;
  String? accessToken;
  int? expiresIn;
  Stats? stats;

  AuthModelData({this.user, this.accessToken, this.expiresIn, this.stats});

  factory AuthModelData.fromJson(Map<String, dynamic> json) =>
      _$AuthModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserModel {
  int? id;
  String? phoneNumber;
  String? photo;
  String? email;
  String? firstName;
  String? lastName;

  // String? firstNameAr;
  // String? lastNameAr;
  String? role;
  String? deviceId;
  String? fcmToken;
  String? deviceType;
  String? createdAt;
  String? updatedAt;

  UserModel(
      {this.id,
      this.phoneNumber,
      this.photo,
      this.email,
      this.firstName,
      this.lastName,
      // this.firstNameAr,
      // this.lastNameAr,
      this.role,
      this.deviceId,
      this.fcmToken,
      this.deviceType,
      this.createdAt,
      this.updatedAt});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Stats {
  int? openTickets, totalRents, tenantsCount, unitsCount;

  Stats(
      {this.openTickets, this.totalRents, this.tenantsCount, this.unitsCount});

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

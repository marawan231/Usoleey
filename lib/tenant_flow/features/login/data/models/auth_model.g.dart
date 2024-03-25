// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      data: json['data'] == null
          ? null
          : AuthModelData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'data': instance.data?.toJson(),
      'message': instance.message,
    };

AuthModelData _$AuthModelDataFromJson(Map<String, dynamic> json) =>
    AuthModelData(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      expiresIn: json['expiresIn'] as int?,
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthModelDataToJson(AuthModelData instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'stats': instance.stats?.toJson(),
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      photo: json['photo'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      role: json['role'] as String?,
      deviceId: json['deviceId'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deviceType: json['deviceType'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'photo': instance.photo,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'role': instance.role,
      'deviceId': instance.deviceId,
      'fcmToken': instance.fcmToken,
      'deviceType': instance.deviceType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      openTickets: json['openTickets'] as int?,
      totalRents: json['totalRents'] as int?,
      tenantsCount: json['tenantsCount'] as int?,
      unitsCount: json['unitsCount'] as int?,
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'openTickets': instance.openTickets,
      'totalRents': instance.totalRents,
      'tenantsCount': instance.tenantsCount,
      'unitsCount': instance.unitsCount,
    };

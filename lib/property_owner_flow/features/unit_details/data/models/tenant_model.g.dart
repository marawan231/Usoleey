// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenantModel _$TenantModelFromJson(Map<String, dynamic> json) => TenantModel(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      photo: json['photo'] as String?,
      firstNameEn: json['firstNameEn'] as String?,
      lastNameEn: json['lastNameEn'] as String?,
      firstNameAr: json['firstNameAr'] as String?,
      lastNameAr: json['lastNameAr'] as String?,
    );

Map<String, dynamic> _$TenantModelToJson(TenantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'photo': instance.photo,
      'firstNameEn': instance.firstNameEn,
      'lastNameEn': instance.lastNameEn,
      'firstNameAr': instance.firstNameAr,
      'lastNameAr': instance.lastNameAr,
    };

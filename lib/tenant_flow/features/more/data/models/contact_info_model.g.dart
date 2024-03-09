// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactInfoModel _$ContactInfoModelFromJson(Map<String, dynamic> json) =>
    ContactInfoModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ContactInfoModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ContactInfoModelToJson(ContactInfoModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'message': instance.message,
    };

ContactInfoModelData _$ContactInfoModelDataFromJson(
        Map<String, dynamic> json) =>
    ContactInfoModelData(
      id: json['id'] as int?,
      phonNumber: json['phonNumber'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ContactInfoModelDataToJson(
        ContactInfoModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phonNumber': instance.phonNumber,
      'email': instance.email,
    };

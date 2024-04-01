// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) =>
    PropertyModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      unitsCount: json['unitsCount'] as int?,
      instrumentNumber: json['instrumentNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      blockNumber: json['blockNumber'] as String?,
      street: json['street'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      enterpriseId: json['enterpriseId'] as int?,
      ownerId: json['ownerId'] as int?,
    );

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'unitsCount': instance.unitsCount,
      'instrumentNumber': instance.instrumentNumber,
      'postalCode': instance.postalCode,
      'blockNumber': instance.blockNumber,
      'street': instance.street,
      'district': instance.district,
      'city': instance.city,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
      'ownerId': instance.ownerId,
    };

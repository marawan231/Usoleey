// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propert_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertDetailsModel _$PropertDetailsModelFromJson(Map<String, dynamic> json) =>
    PropertDetailsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      unitsCount: (json['unitsCount'] as num?)?.toInt(),
      instrumentNumber: json['instrumentNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      blockNumber: json['blockNumber'] as String?,
      street: json['street'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      enterpriseId: (json['enterpriseId'] as num?)?.toInt(),
      ownerId: (json['ownerId'] as num?)?.toInt(),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      totalRent: (json['totalRent'] as num?)?.toInt(),
    )
      ..tenants = (json['tenants'] as List<dynamic>?)
          ?.map((e) => TenantModel.fromJson(e as Map<String, dynamic>))
          .toList()
      ..units = (json['units'] as List<dynamic>?)
          ?.map((e) => Unit.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PropertDetailsModelToJson(
        PropertDetailsModel instance) =>
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
      'owner': instance.owner,
      'tenants': instance.tenants,
      'units': instance.units,
      'totalRent': instance.totalRent,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: (json['id'] as num?)?.toInt(),
      phoneNumber: json['phoneNumber'] as String?,
      photo: json['photo'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      firstNameEn: json['firstNameEn'] as String?,
      lastNameEn: json['lastNameEn'] as String?,
      firstNameAr: json['firstNameAr'] as String?,
      lastNameAr: json['lastNameAr'] as String?,
      role: json['role'] as String?,
      deviceId: json['deviceId'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deviceType: json['deviceType'] as String?,
      language: json['language'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      enterpriseId: (json['enterpriseId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'photo': instance.photo,
      'password': instance.password,
      'email': instance.email,
      'firstNameEn': instance.firstNameEn,
      'lastNameEn': instance.lastNameEn,
      'firstNameAr': instance.firstNameAr,
      'lastNameAr': instance.lastNameAr,
      'role': instance.role,
      'deviceId': instance.deviceId,
      'fcmToken': instance.fcmToken,
      'deviceType': instance.deviceType,
      'language': instance.language,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
    };

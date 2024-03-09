// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'units_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitsModel _$UnitsModelFromJson(Map<String, dynamic> json) => UnitsModel(
      data: json['data'] == null
          ? null
          : UnitDataModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UnitsModelToJson(UnitsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'message': instance.message,
    };

UnitDataModel _$UnitDataModelFromJson(Map<String, dynamic> json) =>
    UnitDataModel(
      units: (json['units'] as List<dynamic>?)
          ?.map((e) => Units.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnitDataModelToJson(UnitDataModel instance) =>
    <String, dynamic>{
      'units': instance.units?.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

Units _$UnitsFromJson(Map<String, dynamic> json) => Units(
      id: json['id'] as int?,
      name: json['name'] as String?,
      rent: json['rent'] as int?,
      rentCollectionDate: json['rentCollectionDate'] as String?,
      electricityAccount: json['electricityAccount'] as String?,
      waterAccount: json['waterAccount'] as String?,
      address: json['address'] as String?,
      space: json['space'] as int?,
      rooms: json['rooms'] as int?,
      bathrooms: json['bathrooms'] as int?,
      lounge: json['lounge'] as bool?,
      conditioners: json['conditioners'] as int?,
      kitchen: json['kitchen'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      property: json['property'] == null
          ? null
          : Property.fromJson(json['property'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$UnitsToJson(Units instance) => <String, dynamic>{
      'id': instance.id,
      'isSelected': instance.isSelected,
      'name': instance.name,
      'rent': instance.rent,
      'rentCollectionDate': instance.rentCollectionDate,
      'electricityAccount': instance.electricityAccount,
      'waterAccount': instance.waterAccount,
      'address': instance.address,
      'space': instance.space,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
      'lounge': instance.lounge,
      'conditioners': instance.conditioners,
      'kitchen': instance.kitchen,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'property': instance.property?.toJson(),
      'owner': instance.owner?.toJson(),
    };

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      unitsCount: json['unitsCount'] as int?,
      instrumentNumber: json['instrumentNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      blockNumber: json['blockNumber'] as String?,
      street: json['street'] as String?,
      subNumber: json['subNumber'] as String?,
      district: json['district'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'unitsCount': instance.unitsCount,
      'instrumentNumber': instance.instrumentNumber,
      'postalCode': instance.postalCode,
      'blockNumber': instance.blockNumber,
      'street': instance.street,
      'subNumber': instance.subNumber,
      'district': instance.district,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'count': instance.count,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      photo: json['photo'] as String?,
      email: json['email'] as String?,
      firstNameEn: json['firstNameEn'] as String?,
      lastNameEn: json['lastNameEn'] as String?,
      firstNameAr: json['firstNameAr'] as String?,
      lastNameAr: json['lastNameAr'] as String?,
      role: json['role'] as String?,
      deviceId: json['deviceId'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deviceType: json['deviceType'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'photo': instance.photo,
      'email': instance.email,
      'firstNameEn': instance.firstNameEn,
      'lastNameEn': instance.lastNameEn,
      'firstNameAr': instance.firstNameAr,
      'lastNameAr': instance.lastNameAr,
      'role': instance.role,
      'deviceId': instance.deviceId,
      'fcmToken': instance.fcmToken,
      'deviceType': instance.deviceType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

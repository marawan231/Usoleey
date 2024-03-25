// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerPropertyModel _$OwnerPropertyModelFromJson(Map<String, dynamic> json) =>
    OwnerPropertyModel(
      updatedProperties: (json['updatedProperties'] as List<dynamic>?)
          ?.map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OwnerPropertyModelToJson(OwnerPropertyModel instance) =>
    <String, dynamic>{
      'updatedProperties': instance.updatedProperties,
      'pagination': instance.pagination,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      unitsCount: json['unitsCount'] as int?,
      instrumentNumber: json['instrumentNumber'] as String?,
      blockNumber: json['blockNumber'] as String?,
      street: json['street'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      image: json['image'] as String?,
    )
      ..postalCode = json['postalCode'] as String?
      ..totalRent = json['totalRent'] as num?;

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'unitsCount': instance.unitsCount,
      'instrumentNumber': instance.instrumentNumber,
      'blockNumber': instance.blockNumber,
      'street': instance.street,
      'district': instance.district,
      'city': instance.city,
      'image': instance.image,
      'postalCode': instance.postalCode,
      'totalRent': instance.totalRent,
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

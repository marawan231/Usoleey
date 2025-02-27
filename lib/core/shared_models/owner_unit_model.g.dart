// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_unit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerUnitModel _$OwnerUnitModelFromJson(Map<String, dynamic> json) =>
    OwnerUnitModel(
      units: (json['units'] as List<dynamic>?)
          ?.map((e) => Unit.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OwnerUnitModelToJson(OwnerUnitModel instance) =>
    <String, dynamic>{
      'units': instance.units,
      'pagination': instance.pagination,
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      rent: (json['rent'] as num?)?.toInt(),
      rentCollectionDate: json['rentCollectionDate'],
      address: json['address'] as String?,
      tenant: json['tenant'] == null
          ? null
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      rentCollectionRate: json['rentCollectionRate'] as String?,
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rent': instance.rent,
      'rentCollectionDate': instance.rentCollectionDate,
      'address': instance.address,
      'tenant': instance.tenant,
      'rentCollectionRate': instance.rentCollectionRate,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'count': instance.count,
    };

Tenant _$TenantFromJson(Map<String, dynamic> json) => Tenant(
      id: (json['id'] as num?)?.toInt(),
      firstNameEn: json['firstNameEn'] as String?,
      lastNameEn: json['lastNameEn'] as String?,
      firstNameAr: json['firstNameAr'] as String?,
      lastNameAr: json['lastNameAr'] as String?,
    );

Map<String, dynamic> _$TenantToJson(Tenant instance) => <String, dynamic>{
      'id': instance.id,
      'firstNameEn': instance.firstNameEn,
      'lastNameEn': instance.lastNameEn,
      'firstNameAr': instance.firstNameAr,
      'lastNameAr': instance.lastNameAr,
    };

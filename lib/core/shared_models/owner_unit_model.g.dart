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
      id: json['id'] as int?,
      name: json['name'] as String?,
      rent: json['rent'] as int?,
      rentCollectionDate: json['rentCollectionDate'],
      address: json['address'] as String?,
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rent': instance.rent,
      'rentCollectionDate': instance.rentCollectionDate,
      'address': instance.address,
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

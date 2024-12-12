// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerPropertyModel _$OwnerPropertyModelFromJson(Map<String, dynamic> json) =>
    OwnerPropertyModel(
      updatedProperties: (json['updatedProperties'] as List<dynamic>?)
          ?.map((e) => PropertyModel.fromJson(e as Map<String, dynamic>))
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

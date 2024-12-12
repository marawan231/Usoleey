// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_tickets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTicketsModel _$AllTicketsModelFromJson(Map<String, dynamic> json) =>
    AllTicketsModel(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    )..tickets = (json['tickets'] as List<dynamic>?)
        ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$AllTicketsModelToJson(AllTicketsModel instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
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

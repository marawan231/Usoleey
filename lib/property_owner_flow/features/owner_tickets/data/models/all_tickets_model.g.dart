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

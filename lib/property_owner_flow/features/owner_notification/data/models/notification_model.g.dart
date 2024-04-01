// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map(
              (e) => OwnerNotificationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'pagination': instance.pagination,
    };

OwnerNotificationItem _$OwnerNotificationItemFromJson(
        Map<String, dynamic> json) =>
    OwnerNotificationItem(
      status: json['status'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      ticketId: json['ticketId'] as int?,
      invoiceId: json['invoiceId'] as int?,
    );

Map<String, dynamic> _$OwnerNotificationItemToJson(
        OwnerNotificationItem instance) =>
    <String, dynamic>{
      'status': instance.status,
      'title': instance.title,
      'body': instance.body,
      'ticketId': instance.ticketId,
      'invoiceId': instance.invoiceId,
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

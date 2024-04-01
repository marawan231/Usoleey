import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class NotificationModel {
  @JsonKey(name: 'notifications')
  List<OwnerNotificationItem>? notifications;
  @JsonKey(name: 'pagination')
  Pagination? pagination;

  NotificationModel({this.notifications, this.pagination});

   factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

   Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class OwnerNotificationItem {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'body')
  String? body;
  @JsonKey(name: 'ticketId')
  int? ticketId;
  @JsonKey(name: 'invoiceId')
  int? invoiceId;

  OwnerNotificationItem({this.status, this.title, this.body, this.ticketId, this.invoiceId});

   factory OwnerNotificationItem.fromJson(Map<String, dynamic> json) => _$OwnerNotificationItemFromJson(json);

   Map<String, dynamic> toJson() => _$OwnerNotificationItemToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Pagination {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'limit')
  int? limit;
  @JsonKey(name: 'count')
  int? count;

  Pagination({this.page, this.limit, this.count});

   factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

   Map<String, dynamic> toJson() => _$PaginationToJson(this);
}


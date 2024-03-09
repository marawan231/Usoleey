import 'package:json_annotation/json_annotation.dart';

part 'tickets_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketsModel {
  TicketsModelData? data;
  String? message;

  TicketsModel({this.data, this.message});

  factory TicketsModel.fromJson(Map<String, dynamic> json) =>
      _$TicketsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TicketsModelData {
  List<Ticket>? tickets;
  Pagination? pagination;

  TicketsModelData({this.tickets, this.pagination});

  factory TicketsModelData.fromJson(Map<String, dynamic> json) =>
      _$TicketsModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsModelDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ticket {
  int? id;
  String? description;
  String? status;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? enterpriseId;
  int? unitId;
  List<String>? images;
  Unit? unit;

  Ticket(
      {this.id,
      this.description,
      this.status,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.enterpriseId,
      this.unitId,
      this.images,
      this.unit});

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Unit {
  int? id;
  String? name;
  int? rent;
  String? rentCollectionDate;
  String? electricityAccount;
  String? waterAccount;
  String? address;
  int? space;
  int? rooms;
  int? bathrooms;
  bool? lounge;
  int? conditioners;
  bool? kitchen;
  String? createdAt;
  String? updatedAt;
  int? tenantId;
  int? ownerId;
  int? propertyId;
  String? enterpriseId;
  Tenant? tenant;

  Unit(
      {this.id,
      this.name,
      this.rent,
      this.rentCollectionDate,
      this.electricityAccount,
      this.waterAccount,
      this.address,
      this.space,
      this.rooms,
      this.bathrooms,
      this.lounge,
      this.conditioners,
      this.kitchen,
      this.createdAt,
      this.updatedAt,
      this.tenantId,
      this.ownerId,
      this.propertyId,
      this.enterpriseId,
      this.tenant});

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  Map<String, dynamic> toJson() => _$UnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Tenant {
  int? id;
  String? phoneNumber;
  String? photo;
  String? password;
  String? email;
  String? firstNameEn;
  String? lastNameEn;
  String? firstNameAr;
  String? lastNameAr;
  String? role;
  String? deviceId;
  String? fcmToken;
  String? deviceType;
  String? createdAt;
  String? updatedAt;
  String? enterpriseId;

  Tenant(
      {this.id,
      this.phoneNumber,
      this.photo,
      this.password,
      this.email,
      this.firstNameEn,
      this.lastNameEn,
      this.firstNameAr,
      this.lastNameAr,
      this.role,
      this.deviceId,
      this.fcmToken,
      this.deviceType,
      this.createdAt,
      this.updatedAt,
      this.enterpriseId});

  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);

  Map<String, dynamic> toJson() => _$TenantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Pagination {
  int? page;
  int? limit;
  int? count;

  Pagination({this.page, this.limit, this.count});

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

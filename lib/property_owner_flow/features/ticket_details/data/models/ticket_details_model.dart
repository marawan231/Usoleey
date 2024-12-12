import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/shared_models/property_model.dart';

part 'ticket_details_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class TicketDetailsModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'createdAt')
  String? createdAt;
  @JsonKey(name: 'updatedAt')
  String? updatedAt;
  @JsonKey(name: 'unitId')
  int? unitId;
  @JsonKey(name: 'unit')
  Unit? unit;
  @JsonKey(name: 'images')
  List<String>? images;

  TicketDetailsModel(
      {this.id,
      this.description,
      this.status,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.unitId,
      this.unit});

  factory TicketDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TicketDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketDetailsModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Unit {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'rentCollectionDate')
  String? rentCollectionDate;
  @JsonKey(name: 'rent')
  int? rent;
  @JsonKey(name: 'electricityAccount')
  String? electricityAccount;
  @JsonKey(name: 'waterAccount')
  String? waterAccount;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'space')
  int? space;
  @JsonKey(name: 'rooms')
  int? rooms;
  @JsonKey(name: 'bathrooms')
  int? bathrooms;
  @JsonKey(name: 'lounge')
  bool? lounge;
  @JsonKey(name: 'conditioners')
  int? conditioners;
  @JsonKey(name: 'kitchen')
  bool? kitchen;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'createdAt')
  String? createdAt;
  @JsonKey(name: 'updatedAt')
  String? updatedAt;
  @JsonKey(name: 'tenantId')
  int? tenantId;
  @JsonKey(name: 'propertyId')
  int? propertyId;
  @JsonKey(name: 'ownerId')
  int? ownerId;
  @JsonKey(name: 'enterpriseId')
  int? enterpriseId;
  @JsonKey(name: 'tenant')
  Tenant? tenant;
  @JsonKey(name: 'property')
  PropertyModel? property;

  Unit(
      {this.id,
      this.name,
      this.rent,
      this.electricityAccount,
      this.waterAccount,
      this.address,
      thisace,
      this.rooms,
      this.bathrooms,
      this.lounge,
      this.conditioners,
      this.kitchen,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.tenantId,
      this.propertyId,
      this.ownerId,
      this.enterpriseId,
      this.tenant,
      this.property});

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  Map<String, dynamic> toJson() => _$UnitToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Tenant {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'photo')
  String? photo;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'firstNameEn')
  String? firstNameEn;
  @JsonKey(name: 'lastNameEn')
  String? lastNameEn;
  @JsonKey(name: 'firstNameAr')
  String? firstNameAr;
  @JsonKey(name: 'lastNameAr')
  String? lastNameAr;
  @JsonKey(name: 'role')
  String? role;
  @JsonKey(name: 'deviceId')
  String? deviceId;
  @JsonKey(name: 'fcmToken')
  String? fcmToken;
  @JsonKey(name: 'deviceType')
  String? deviceType;
  @JsonKey(name: 'language')
  String? language;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'enterpriseId')
  int? enterpriseId;

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
      this.language,
      this.createdAt,
      this.updatedAt,
      this.enterpriseId});

  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);

  Map<String, dynamic> toJson() => _$TenantToJson(this);
}

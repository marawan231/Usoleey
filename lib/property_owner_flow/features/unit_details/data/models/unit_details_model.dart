import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/invoice_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/tenant_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../owner_home/data/models/home_model.dart';

part 'unit_details_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class UnitDetailsModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'rent')
  int? rent;
  @JsonKey(name: 'rentCollectionDate')
  String? rentCollectionDate;
  @JsonKey(name: 'electricityAccount')
  String? electricityAccount;
  @JsonKey(name: 'waterAccount')
  String? waterAccount;
  @JsonKey(name: 'waterCost')
  dynamic waterCost;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'space')
  int? space;
  @JsonKey(name: 'ticketsCount')
  int? ticketsCount;
  @JsonKey(name: 'invoicesCount')
  int? invoicesCount;
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
  @JsonKey(name: 'owner')
  Owner? owner;
  @JsonKey(name: 'property')
  Property? property;
  @JsonKey(name: 'tenant')
  TenantModel? tenant;
  @JsonKey(name: 'details')
  List<Detail>? details;
  @JsonKey(name: 'invoices')
  List<InvoiceModel>? invoices;
  @JsonKey(name: 'tickets')
  List<TicketModel>? tickets;

  UnitDetailsModel(
      {this.id,
      this.name,
      this.rent,
      this.rentCollectionDate,
      this.electricityAccount,
      this.waterAccount,
      this.waterCost,
      this.address,
      this.space,
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
      this.owner,
      this.property,
      this.tenant,
      this.details});

  factory UnitDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UnitDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$UnitDetailsModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Owner {
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'firstNameEn')
  String? firstNameEn;
  @JsonKey(name: 'lastNameEn')
  String? lastNameEn;
  @JsonKey(name: 'firstNameAr')
  String? firstNameAr;
  @JsonKey(name: 'lastNameAr')
  String? lastNameAr;
  @JsonKey(name: 'fcmToken')
  String? fcmToken;
  @JsonKey(name: 'language')
  String? language;

  Owner(
      {this.phoneNumber,
      this.firstNameEn,
      this.lastNameEn,
      this.firstNameAr,
      this.lastNameAr,
      this.fcmToken,
      this.language});

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Property {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'unitsCount')
  int? unitsCount;
  @JsonKey(name: 'instrumentNumber')
  String? instrumentNumber;
  @JsonKey(name: 'postalCode')
  String? postalCode;
  @JsonKey(name: 'blockNumber')
  String? blockNumber;
  @JsonKey(name: 'street')
  String? street;
  @JsonKey(name: 'district')
  String? district;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'createdAt')
  String? createdAt;
  @JsonKey(name: 'updatedAt')
  String? updatedAt;
  @JsonKey(name: 'enterpriseId')
  int? enterpriseId;
  @JsonKey(name: 'ownerId')
  int? ownerId;

  Property(
      {this.id,
      this.name,
      this.address,
      this.unitsCount,
      this.instrumentNumber,
      this.postalCode,
      this.blockNumber,
      this.street,
      this.district,
      this.city,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.enterpriseId,
      this.ownerId});

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Detail {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'value')
  dynamic value;

  Detail({this.name, this.value});

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);
}

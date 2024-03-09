import 'package:json_annotation/json_annotation.dart';

part 'create_ticket_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateTicketResponseModel {
  CreateTicketResponseModelData? data;
  String? message;

  CreateTicketResponseModel({this.data, this.message});

  factory CreateTicketResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTicketResponseModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateTicketResponseModelData {
  String? description;
  String? status;
  String? type;
  int? unitId;
  List<String>? images;
  Unit? unit;
  int? id;
  String? createdAt;
  String? updatedAt;

  CreateTicketResponseModelData(
      {this.description,
      this.status,
      this.type,
      this.unitId,
      this.images,
      this.unit,
      this.id,
      this.createdAt,
      this.updatedAt});

  factory CreateTicketResponseModelData.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketResponseModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTicketResponseModelDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Unit {
  int? id;
  String? name;
  int? rent;
  String? rentCollectionDate;
  String? electricityAccount;
  String? waterAccount;
  String? waterCost;
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
  int? propertyId;
  int? ownerId;
  int? enterpriseId;
  Owner? owner;
  Property? property;
  List<Details>? details;

  Unit(
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
      this.createdAt,
      this.updatedAt,
      this.tenantId,
      this.propertyId,
      this.ownerId,
      this.enterpriseId,
      this.owner,
      this.property,
      this.details});

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  Map<String, dynamic> toJson() => _$UnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Owner {
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
  int? enterpriseId;

  Owner(
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

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Property {
  int? id;
  String? name;
  String? address;
  int? unitsCount;
  String? instrumentNumber;
  String? postalCode;
  String? blockNumber;
  String? street;
  String? subNumber;
  String? district;
  String? city;
  String? createdAt;
  String? updatedAt;
  int? enterpriseId;
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
      this.subNumber,
      this.district,
      this.city,
      this.createdAt,
      this.updatedAt,
      this.enterpriseId,
      this.ownerId});

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Details {
  String? name;
  int? value;

  Details({this.name, this.value});

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);
}

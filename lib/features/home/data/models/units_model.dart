import 'package:json_annotation/json_annotation.dart';

part 'units_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UnitsModel {
  UnitDataModel? data;
  String? message;

  UnitsModel({this.data, this.message});

  factory UnitsModel.fromJson(Map<String, dynamic> json) =>
      _$UnitsModelFromJson(json);

  Map<String, dynamic> toJson() => _$UnitsModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UnitDataModel {
  List<Units>? units;
  Pagination? pagination;

  UnitDataModel({this.units, this.pagination});

  factory UnitDataModel.fromJson(Map<String, dynamic> json) =>
      _$UnitDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$UnitDataModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Units {
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
  Property? property;
  Owner? owner;

  Units(
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
      this.property,
      this.owner});

  factory Units.fromJson(Map<String, dynamic> json) => _$UnitsFromJson(json);

  Map<String, dynamic> toJson() => _$UnitsToJson(this);
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
  String? createdAt;
  String? updatedAt;

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
      this.createdAt,
      this.updatedAt});

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
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

@JsonSerializable(explicitToJson: true)
class Owner {
  int? id;
  String? phoneNumber;
  String? photo;
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

  Owner(
      {this.id,
      this.phoneNumber,
      this.photo,
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
      this.updatedAt});

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

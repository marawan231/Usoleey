import 'package:flutter_complete_project/core/shared_models/owner_unit_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/tenant_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'propert_details_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class PropertDetailsModel {
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
  @JsonKey(name: 'owner')
  Owner? owner;
  @JsonKey(name: 'tenants')
  List<TenantModel>? tenants;
  @JsonKey(name: 'units')
  List<Unit>? units;
  @JsonKey(name: 'totalRent')
  int? totalRent;

  PropertDetailsModel(
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
      this.ownerId,
      this.owner,
      this.totalRent});

  factory PropertDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PropertDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PropertDetailsModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Owner {
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
      this.language,
      this.createdAt,
      this.updatedAt,
      this.enterpriseId});

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

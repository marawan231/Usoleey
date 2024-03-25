import 'package:json_annotation/json_annotation.dart';

part 'tenant_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TenantModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'photo')
  String? photo;
  @JsonKey(name: 'firstNameEn')
  String? firstNameEn;
  @JsonKey(name: 'lastNameEn')
  String? lastNameEn;
  @JsonKey(name: 'firstNameAr')
  String? firstNameAr;
  @JsonKey(name: 'lastNameAr')
  String? lastNameAr;

  TenantModel({this.id, this.phoneNumber, this.photo, this.firstNameEn, this.lastNameEn, this.firstNameAr, this.lastNameAr});

   factory TenantModel.fromJson(Map<String, dynamic> json) => _$TenantModelFromJson(json);

   Map<String, dynamic> toJson() => _$TenantModelToJson(this);
}


import 'package:json_annotation/json_annotation.dart';

part 'property_model.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class PropertyModel {
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

  PropertyModel(
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

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyModelToJson(this);
}
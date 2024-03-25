import 'package:json_annotation/json_annotation.dart';

part 'owner_property_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class OwnerPropertyModel {
  @JsonKey(name: 'updatedProperties')
  List<Property>? updatedProperties;
  @JsonKey(name: 'pagination')
  Pagination? pagination;

  OwnerPropertyModel({this.updatedProperties, this.pagination});

   factory OwnerPropertyModel.fromJson(Map<String, dynamic> json) => _$OwnerPropertyModelFromJson(json);

   Map<String, dynamic> toJson() => _$OwnerPropertyModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Property{
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
  @JsonKey(name: 'postalCode')
  String? postalCode;
  @JsonKey(name: 'totalRent')
  num? totalRent;


  Property({this.id, this.name, this.address, this.unitsCount, this.instrumentNumber, this.blockNumber, this.street, this.district, this.city, this.image});

   factory Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);

   Map<String, dynamic> toJson() => _$PropertyToJson(this);
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


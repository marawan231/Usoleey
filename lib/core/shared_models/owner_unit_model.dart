import 'package:json_annotation/json_annotation.dart';

part 'owner_unit_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class OwnerUnitModel {
  @JsonKey(name: 'units')
  List<Unit>? units;
  @JsonKey(name: 'pagination')
  Pagination? pagination;

  OwnerUnitModel({this.units, this.pagination});

   factory OwnerUnitModel.fromJson(Map<String, dynamic> json) => _$OwnerUnitModelFromJson(json);

   Map<String, dynamic> toJson() => _$OwnerUnitModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Unit {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'rent')
  int? rent;
  @JsonKey(name: 'rentCollectionDate')
  dynamic rentCollectionDate;
  @JsonKey(name: 'address')
  String? address;

  Unit({this.id, this.name, this.rent, this.rentCollectionDate, this.address});

   factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

   Map<String, dynamic> toJson() => _$UnitToJson(this);
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


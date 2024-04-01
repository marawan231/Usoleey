import 'package:flutter_complete_project/core/shared_models/property_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'owner_property_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class OwnerPropertyModel {
  @JsonKey(name: 'updatedProperties')
  List<PropertyModel>? updatedProperties;
  @JsonKey(name: 'pagination')
  Pagination? pagination;

  OwnerPropertyModel({this.updatedProperties, this.pagination});

   factory OwnerPropertyModel.fromJson(Map<String, dynamic> json) => _$OwnerPropertyModelFromJson(json);

   Map<String, dynamic> toJson() => _$OwnerPropertyModelToJson(this);
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


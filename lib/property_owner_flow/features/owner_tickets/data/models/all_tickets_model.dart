import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../owner_home/data/models/home_model.dart';

part 'all_tickets_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AllTicketsModel {
  @JsonKey(name: 'tickets')
  List<TicketModel>? tickets;
  @JsonKey(name: 'pagination')
  Pagination? pagination;

  AllTicketsModel({this.pagination});

   factory AllTicketsModel.fromJson(Map<String, dynamic> json) => _$AllTicketsModelFromJson(json);

   Map<String, dynamic> toJson() => _$AllTicketsModelToJson(this);
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


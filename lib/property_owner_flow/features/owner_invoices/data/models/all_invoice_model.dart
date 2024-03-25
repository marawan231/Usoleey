import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/invoice_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'all_invoice_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AllInvoiceModel {
  @JsonKey(name: 'invoices')
  List<InvoiceModel>? invoices;
  @JsonKey(name: 'pagination')
  Pagination? pagination;

  AllInvoiceModel({this.invoices, this.pagination});

   factory AllInvoiceModel.fromJson(Map<String, dynamic> json) => _$AllInvoiceModelFromJson(json);

   Map<String, dynamic> toJson() => _$AllInvoiceModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Invoice {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'file')
  String? file;
  @JsonKey(name: 'dueDate')
  String? dueDate;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'unitId')
  int? unitId;
  @JsonKey(name: 'createdAt')
  String? createdAt;
  @JsonKey(name: 'updatedAt')
  String? updatedAt;

  Invoice({this.id, this.amount, this.file, this.dueDate, this.type, this.unitId, this.createdAt, this.updatedAt});

   factory Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);

   Map<String, dynamic> toJson() => _$InvoiceToJson(this);
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


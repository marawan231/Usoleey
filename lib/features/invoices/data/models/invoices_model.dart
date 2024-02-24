import 'package:flutter_complete_project/features/tickets/data/models/tickets_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoices_model.g.dart';

@JsonSerializable(explicitToJson: true)
class InvoicesModel {
  InovicesModelData? data;
  String? message;

  InvoicesModel({this.data, this.message});

  factory InvoicesModel.fromJson(Map<String, dynamic> json) =>
      _$InvoicesModelFromJson(json);

  Map<String, dynamic> toJson() => _$InvoicesModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InovicesModelData {
  List<Invoice>? invoices;
  Pagination? pagination;

  InovicesModelData({this.invoices, this.pagination});

  factory InovicesModelData.fromJson(Map<String, dynamic> json) =>
      _$InovicesModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$InovicesModelDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Invoice {
  int? id;
  int? amount;
  String? file;
  String? dueDate;
  String? type;
  String? icon;
  int? unitId;
  String? createdAt;
  String? updatedAt;
  Unit? unit;

  Invoice(
      {this.id,
      this.amount,
      this.file,
      this.dueDate,
      this.type,
      this.unitId,
      this.createdAt,
      this.updatedAt,
      this.unit});

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}

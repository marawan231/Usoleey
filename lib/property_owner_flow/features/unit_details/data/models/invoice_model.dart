import 'package:json_annotation/json_annotation.dart';

part 'invoice_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class InvoiceModel {
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

  InvoiceModel({this.id, this.amount, this.file, this.dueDate, this.type, this.unitId, this.createdAt, this.updatedAt});

   factory InvoiceModel.fromJson(Map<String, dynamic> json) => _$InvoiceModelFromJson(json);

   Map<String, dynamic> toJson() => _$InvoiceModelToJson(this);
}


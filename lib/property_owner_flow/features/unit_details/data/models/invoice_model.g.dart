// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) => InvoiceModel(
      id: json['id'] as int?,
      amount: json['amount'] as int?,
      file: json['file'] as String?,
      dueDate: json['dueDate'] as String?,
      type: json['type'] as String?,
      unitId: json['unitId'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$InvoiceModelToJson(InvoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'file': instance.file,
      'dueDate': instance.dueDate,
      'type': instance.type,
      'unitId': instance.unitId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

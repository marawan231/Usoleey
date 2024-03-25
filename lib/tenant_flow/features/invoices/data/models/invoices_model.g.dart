// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoicesModel _$InvoicesModelFromJson(Map<String, dynamic> json) =>
    InvoicesModel(
      data: json['data'] == null
          ? null
          : InovicesModelData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$InvoicesModelToJson(InvoicesModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'message': instance.message,
    };

InovicesModelData _$InovicesModelDataFromJson(Map<String, dynamic> json) =>
    InovicesModelData(
      invoices: (json['owner_invoices'] as List<dynamic>?)
          ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InovicesModelDataToJson(InovicesModelData instance) =>
    <String, dynamic>{
      'owner_invoices': instance.invoices?.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      id: json['id'] as int?,
      amount: json['amount'] as int?,
      file: json['file'] as String?,
      dueDate: json['dueDate'] as String?,
      type: json['type'] as String?,
      unitId: json['unitId'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
    )..icon = json['icon'] as String?;

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'file': instance.file,
      'dueDate': instance.dueDate,
      'type': instance.type,
      'icon': instance.icon,
      'unitId': instance.unitId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'unit': instance.unit?.toJson(),
    };

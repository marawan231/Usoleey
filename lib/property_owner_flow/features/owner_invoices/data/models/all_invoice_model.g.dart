// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllInvoiceModel _$AllInvoiceModelFromJson(Map<String, dynamic> json) =>
    AllInvoiceModel(
      invoices: (json['invoices'] as List<dynamic>?)
          ?.map((e) => InvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AllInvoiceModelToJson(AllInvoiceModel instance) =>
    <String, dynamic>{
      'invoices': instance.invoices,
      'pagination': instance.pagination,
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
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'file': instance.file,
      'dueDate': instance.dueDate,
      'type': instance.type,
      'unitId': instance.unitId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'count': instance.count,
    };

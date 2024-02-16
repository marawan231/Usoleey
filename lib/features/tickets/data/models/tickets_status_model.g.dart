// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketsStatusModel _$TicketsStatusModelFromJson(Map<String, dynamic> json) =>
    TicketsStatusModel(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => TicketsStatusModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketsStatusModelToJson(TicketsStatusModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

TicketsStatusModelData _$TicketsStatusModelDataFromJson(
        Map<String, dynamic> json) =>
    TicketsStatusModelData(
      id: json['id'] as int?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$TicketsStatusModelDataToJson(
        TicketsStatusModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
    };

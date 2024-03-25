// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      notificationsCount: json['notificationsCount'] as int?,
      recentTickets: (json['recentTickets'] as List<dynamic>?)
          ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'stats': instance.stats,
      'notificationsCount': instance.notificationsCount,
      'recentTickets': instance.recentTickets,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      openTickets: json['openTickets'] as int?,
      totalRents: json['totalRents'] as int?,
      tenantsCount: json['tenantsCount'] as int?,
      unitsCount: json['unitsCount'] as int?,
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'openTickets': instance.openTickets,
      'totalRents': instance.totalRents,
      'tenantsCount': instance.tenantsCount,
      'unitsCount': instance.unitsCount,
    };

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => TicketModel(
      id: json['id'] as int?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      unitId: json['unitId'] as int?,
    );

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'status': instance.status,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'unitId': instance.unitId,
    };

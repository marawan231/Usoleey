import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class HomeModel {
  @JsonKey(name: 'stats')
  Stats? stats;
  @JsonKey(name: 'notificationsCount')
  int? notificationsCount;
  @JsonKey(name: 'recentTickets')
  List<TicketModel>? recentTickets;

  HomeModel({this.stats, this.notificationsCount, this.recentTickets});

   factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

   Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Stats {
  @JsonKey(name: 'openTickets')
  int? openTickets;
  @JsonKey(name: 'totalRents')
  int? totalRents;
  @JsonKey(name: 'tenantsCount')
  int? tenantsCount;
  @JsonKey(name: 'unitsCount')
  int? unitsCount;

  Stats({this.openTickets, this.totalRents, this.tenantsCount, this.unitsCount});

   factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

   Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class TicketModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'createdAt')
  String? createdAt;
  @JsonKey(name: 'updatedAt')
  String? updatedAt;
  @JsonKey(name: 'unitId')
  int? unitId;

  TicketModel({this.id, this.description, this.status, this.type, this.createdAt, this.updatedAt, this.unitId});

   factory TicketModel.fromJson(Map<String, dynamic> json) => _$TicketModelFromJson(json);

   Map<String, dynamic> toJson() => _$TicketModelToJson(this);
}




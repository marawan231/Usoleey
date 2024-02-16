import 'package:json_annotation/json_annotation.dart';

part 'tickets_status_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketsStatusModel {
  List<TicketsStatusModelData>? data;

  TicketsStatusModel({this.data});

  factory TicketsStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TicketsStatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsStatusModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TicketsStatusModelData {
  int? id;
  String? label;

  TicketsStatusModelData({this.id, this.label});

  factory TicketsStatusModelData.fromJson(Map<String, dynamic> json) =>
      _$TicketsStatusModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsStatusModelDataToJson(this);
}

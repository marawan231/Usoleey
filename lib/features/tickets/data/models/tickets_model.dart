import 'package:json_annotation/json_annotation.dart';
part 'tickets_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketsModel {
  List<Ticket>? data;
  String? message;

  TicketsModel({this.data, this.message});

  factory TicketsModel.fromJson(Map<String, dynamic> json) =>
      _$TicketsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ticket {
  int? id;
  String? description;
  String? status;
  String? type;
  String? createdAt;
  String? updatedAt;
  List<String>? images;

  Ticket(
      {this.id,
      this.description,
      this.status,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.images});

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

import 'dart:io';

class CreateTicketRequestModel {
  String description;
  String type;
  int unitId;
  List<File> images;

  CreateTicketRequestModel(
      {required this.description,
      required this.type,
      required this.unitId,
      required this.images});

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "type": type,
      "unitId": unitId,
      "images": images,
    };
  }

  factory CreateTicketRequestModel.fromJson(Map<String, dynamic> json) {
    return CreateTicketRequestModel(
        description: json['description'],
        type: json['type'],
        unitId: json['unitId'],
        images: json['images']);
  }
}

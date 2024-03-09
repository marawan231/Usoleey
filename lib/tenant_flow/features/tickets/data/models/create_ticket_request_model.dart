class CreateTicketRequestModel {
  String? description;
  String? type;
  int? unitId;
  List<String>? images;
  String? status;

  CreateTicketRequestModel(
      {this.description, this.type, this.unitId, this.images, this.status});

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "type": type,
      "unitId": unitId,
      "images": images,
      "status": status
    };
  }

  factory CreateTicketRequestModel.fromJson(Map<String, dynamic> json) {
    return CreateTicketRequestModel(
        description: json['description'],
        type: json['type'],
        unitId: json['unitId'],
        images: json['images'],
        status: json['status']);
  }
}

import 'package:json_annotation/json_annotation.dart';

part 'contact_info_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactInfoModel {
  List<ContactInfoModelData>? data;
  String? message;

  ContactInfoModel({this.data, this.message});

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContactInfoModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ContactInfoModelData {
  int? id;
  String? phonNumber;
  String? email;

  ContactInfoModelData({this.id, this.phonNumber, this.email});

  factory ContactInfoModelData.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContactInfoModelDataToJson(this);
}

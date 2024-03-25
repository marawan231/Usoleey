import 'package:json_annotation/json_annotation.dart';

part 'ads_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AdsModel {
  List<Ad>? data;
  String? message;

  AdsModel({this.data, this.message});

  factory AdsModel.fromJson(Map<String, dynamic> json) =>
      _$AdsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdsModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ad {
  int? id;
  String? image;
  String? url;
  int? index;
  String? title;
  String? subTitle;

  Ad({this.id, this.image, this.url, this.index, this.title, this.subTitle});

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);

  Map<String, dynamic> toJson() => _$AdToJson(this);
}

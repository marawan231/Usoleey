// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdsModel _$AdsModelFromJson(Map<String, dynamic> json) => AdsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Ad.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AdsModelToJson(AdsModel instance) => <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'message': instance.message,
    };

Ad _$AdFromJson(Map<String, dynamic> json) => Ad(
      id: json['id'] as int?,
      image: json['image'] as String?,
      url: json['url'] as String?,
      index: json['index'] as int?,
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
    );

Map<String, dynamic> _$AdToJson(Ad instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'url': instance.url,
      'index': instance.index,
      'title': instance.title,
      'subTitle': instance.subTitle,
    };

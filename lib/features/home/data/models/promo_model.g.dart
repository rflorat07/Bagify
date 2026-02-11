// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoModel _$PromoModelFromJson(Map<String, dynamic> json) => _PromoModel(
  title: json['title'] as String,
  description: json['description'] as String,
  thumbnail: json['thumbnail'] as String,
);

Map<String, dynamic> _$PromoModelToJson(_PromoModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };

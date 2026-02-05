// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistant_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssistantCategoryModel _$AssistantCategoryModelFromJson(
  Map<String, dynamic> json,
) => _AssistantCategoryModel(
  slug: json['slug'] as String,
  name: json['name'] as String,
  image: json['image'] as String? ?? 'https://dummyjson.com/icon/adrianf/128',
);

Map<String, dynamic> _$AssistantCategoryModelToJson(
  _AssistantCategoryModel instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'name': instance.name,
  'image': instance.image,
};

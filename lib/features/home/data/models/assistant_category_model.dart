import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'assistant_category_model.freezed.dart';
part 'assistant_category_model.g.dart';

@freezed
abstract class AssistantCategoryModel with _$AssistantCategoryModel {
  const factory AssistantCategoryModel({
    required String slug,
    required String name,
    @Default('https://dummyjson.com/icon/adrianf/128') String image,
  }) = _AssistantCategoryModel;

  factory AssistantCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AssistantCategoryModelFromJson(json);
}

extension AssistantCategoryModelX on AssistantCategoryModel {
  AssistantCategory toEntity() {
    return AssistantCategory(
      slug: slug,
      name: name,
      image: image,
    );
  }
}

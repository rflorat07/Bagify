import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant_category.freezed.dart';

@freezed
abstract class AssistantCategory with _$AssistantCategory {
  const factory AssistantCategory({
    required String slug,
    required String name,
    required String image,
  }) = _AssistantCategory;
}

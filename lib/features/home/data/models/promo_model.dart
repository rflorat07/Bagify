import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'promo_model.freezed.dart';
part 'promo_model.g.dart';

@freezed
abstract class PromoModel with _$PromoModel {
  const factory PromoModel({
    required String title,
    required String description,
    required String thumbnail,
  }) = _PromoModel;

  factory PromoModel.fromJson(Map<String, dynamic> json) =>
      _$PromoModelFromJson(json);
}

extension PromoModelX on PromoModel {
  Promo toEntity() {
    return Promo(
      title: title,
      description: description,
      image: thumbnail,
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo.freezed.dart';

@freezed
abstract class Promo with _$Promo {
  const factory Promo({
    required String title,
    required String description,
    required String image,
  }) = _Promo;
}

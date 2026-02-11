import '../entities/entities.dart';

abstract interface class PromoRepository {
  Future<List<Promo>> fetchPromotionalBanners();
}

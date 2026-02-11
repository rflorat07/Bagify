import '../entities/entities.dart';
import '../repositories/repositories.dart';

class FetchPromoUsecase {
  final PromoRepository promoRepository;

  FetchPromoUsecase(this.promoRepository);

  Future<List<Promo>> call() {
    return promoRepository.fetchPromotionalBanners();
  }
}

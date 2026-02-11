import '../../../../core/errors/errors.dart';
import '../../../../core/network/network.dart';
import '../models/models.dart';

abstract class PromoRemoteDataSource {
  Future<List<PromoModel>> fetchPromotionalBanners();
}

class PromoRemoteDataSourceImpl implements PromoRemoteDataSource {
  @override
  Future<List<PromoModel>> fetchPromotionalBanners() async {
    try {
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/products?limit=5',
      );

      final productsData = response.data['products'] as List<dynamic>? ?? [];

      final promotions = productsData
          .map((product) => PromoModel.fromJson(product))
          .map(
            (promo) => promo.copyWith(
              thumbnail:
                  'https://dummyjson.com/image/400x200/008080/ffffff?text=25%25%20OFF',
            ),
          )
          .toList();

      return promotions;
    } catch (e) {
      throw ServerFailure(message: 'Failed to fetch promotional banners: $e');
    }
  }
}

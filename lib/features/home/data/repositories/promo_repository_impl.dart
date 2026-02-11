import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class PromoRepositoryImpl implements PromoRepository {
  final PromoRemoteDataSource remoteDataSource;

  PromoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Promo>> fetchPromotionalBanners() async {
    final promoModels = await remoteDataSource.fetchPromotionalBanners();
    return promoModels.map((model) => model.toEntity()).toList();
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/datasources.dart';
import '../../data/repositories/repositories.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

part 'promo_providers.g.dart';

// Provider for the remote data source
@riverpod
PromoRemoteDataSource promoRemoteDataSource(Ref ref) {
  return PromoRemoteDataSourceImpl();
}

// Provider for the repositor
@riverpod
PromoRepository promoRepository(Ref ref) {
  final remoteDataSource = ref.watch(promoRemoteDataSourceProvider);
  return PromoRepositoryImpl(remoteDataSource: remoteDataSource);
}

// Provider for the use case
@riverpod
FetchPromoUsecase fetchPromoUsecase(Ref ref) {
  final repository = ref.watch(promoRepositoryProvider);
  return FetchPromoUsecase(repository);
}

// Notifier for user data, handling async state
@riverpod
class PromoNotifier extends _$PromoNotifier {
  // Builds the initial user data asynchronously
  @override
  Future<List<Promo>> build() async {
    final fetchPromoUsecase = ref.watch(fetchPromoUsecaseProvider);
    return await fetchPromoUsecase.call();
  }

  // Refreshes the user data by invalidating the provider
  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

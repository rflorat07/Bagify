// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(promoRemoteDataSource)
const promoRemoteDataSourceProvider = PromoRemoteDataSourceProvider._();

final class PromoRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PromoRemoteDataSource,
          PromoRemoteDataSource,
          PromoRemoteDataSource
        >
    with $Provider<PromoRemoteDataSource> {
  const PromoRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PromoRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PromoRemoteDataSource create(Ref ref) {
    return promoRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PromoRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PromoRemoteDataSource>(value),
    );
  }
}

String _$promoRemoteDataSourceHash() =>
    r'b460f5c54f6c316d77f6f5b16c704becb2f15f73';

@ProviderFor(promoRepository)
const promoRepositoryProvider = PromoRepositoryProvider._();

final class PromoRepositoryProvider
    extends
        $FunctionalProvider<PromoRepository, PromoRepository, PromoRepository>
    with $Provider<PromoRepository> {
  const PromoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoRepositoryHash();

  @$internal
  @override
  $ProviderElement<PromoRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PromoRepository create(Ref ref) {
    return promoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PromoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PromoRepository>(value),
    );
  }
}

String _$promoRepositoryHash() => r'47c8ae61b8445c4341775f296a6eac0d63179acb';

@ProviderFor(fetchPromoUsecase)
const fetchPromoUsecaseProvider = FetchPromoUsecaseProvider._();

final class FetchPromoUsecaseProvider
    extends
        $FunctionalProvider<
          FetchPromoUsecase,
          FetchPromoUsecase,
          FetchPromoUsecase
        >
    with $Provider<FetchPromoUsecase> {
  const FetchPromoUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchPromoUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchPromoUsecaseHash();

  @$internal
  @override
  $ProviderElement<FetchPromoUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchPromoUsecase create(Ref ref) {
    return fetchPromoUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchPromoUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchPromoUsecase>(value),
    );
  }
}

String _$fetchPromoUsecaseHash() => r'e782bdfd02264e8795c8519318b7358f7c959090';

@ProviderFor(PromoNotifier)
const promoProvider = PromoNotifierProvider._();

final class PromoNotifierProvider
    extends $AsyncNotifierProvider<PromoNotifier, List<Promo>> {
  const PromoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promoNotifierHash();

  @$internal
  @override
  PromoNotifier create() => PromoNotifier();
}

String _$promoNotifierHash() => r'8bfc785c1a3574babbd3cf9c1efd4b742f2bcc70';

abstract class _$PromoNotifier extends $AsyncNotifier<List<Promo>> {
  FutureOr<List<Promo>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Promo>>, List<Promo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Promo>>, List<Promo>>,
              AsyncValue<List<Promo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_assistant_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(shoppingAssistantRemoteDataSource)
const shoppingAssistantRemoteDataSourceProvider =
    ShoppingAssistantRemoteDataSourceProvider._();

final class ShoppingAssistantRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ShoppingAssistantRemoteDataSource,
          ShoppingAssistantRemoteDataSource,
          ShoppingAssistantRemoteDataSource
        >
    with $Provider<ShoppingAssistantRemoteDataSource> {
  const ShoppingAssistantRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shoppingAssistantRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$shoppingAssistantRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ShoppingAssistantRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ShoppingAssistantRemoteDataSource create(Ref ref) {
    return shoppingAssistantRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShoppingAssistantRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShoppingAssistantRemoteDataSource>(
        value,
      ),
    );
  }
}

String _$shoppingAssistantRemoteDataSourceHash() =>
    r'e4500092a5f2cf793e0dc2d51d8864937dd85f63';

@ProviderFor(shoppingAssistantRepository)
const shoppingAssistantRepositoryProvider =
    ShoppingAssistantRepositoryProvider._();

final class ShoppingAssistantRepositoryProvider
    extends
        $FunctionalProvider<
          ShoppingAssistantRepository,
          ShoppingAssistantRepository,
          ShoppingAssistantRepository
        >
    with $Provider<ShoppingAssistantRepository> {
  const ShoppingAssistantRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shoppingAssistantRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shoppingAssistantRepositoryHash();

  @$internal
  @override
  $ProviderElement<ShoppingAssistantRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ShoppingAssistantRepository create(Ref ref) {
    return shoppingAssistantRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShoppingAssistantRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShoppingAssistantRepository>(value),
    );
  }
}

String _$shoppingAssistantRepositoryHash() =>
    r'b329201a37a2ad1a7710cb2842e0d9038dab7aff';

@ProviderFor(fetchAssistantCategoriesUseCase)
const fetchAssistantCategoriesUseCaseProvider =
    FetchAssistantCategoriesUseCaseProvider._();

final class FetchAssistantCategoriesUseCaseProvider
    extends
        $FunctionalProvider<
          FetchAssistantCategoriesUseCase,
          FetchAssistantCategoriesUseCase,
          FetchAssistantCategoriesUseCase
        >
    with $Provider<FetchAssistantCategoriesUseCase> {
  const FetchAssistantCategoriesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchAssistantCategoriesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchAssistantCategoriesUseCaseHash();

  @$internal
  @override
  $ProviderElement<FetchAssistantCategoriesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchAssistantCategoriesUseCase create(Ref ref) {
    return fetchAssistantCategoriesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchAssistantCategoriesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchAssistantCategoriesUseCase>(
        value,
      ),
    );
  }
}

String _$fetchAssistantCategoriesUseCaseHash() =>
    r'f699ff1707209dc541ce76a23ed183abdd267d2f';

@ProviderFor(AssistantCategoriesNotifier)
const assistantCategoriesProvider = AssistantCategoriesNotifierProvider._();

final class AssistantCategoriesNotifierProvider
    extends
        $AsyncNotifierProvider<
          AssistantCategoriesNotifier,
          List<AssistantCategory>
        > {
  const AssistantCategoriesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'assistantCategoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$assistantCategoriesNotifierHash();

  @$internal
  @override
  AssistantCategoriesNotifier create() => AssistantCategoriesNotifier();
}

String _$assistantCategoriesNotifierHash() =>
    r'0854845d3ae29084fbf87d3c4ee0fc187096d720';

abstract class _$AssistantCategoriesNotifier
    extends $AsyncNotifier<List<AssistantCategory>> {
  FutureOr<List<AssistantCategory>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<AssistantCategory>>,
              List<AssistantCategory>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AssistantCategory>>,
                List<AssistantCategory>
              >,
              AsyncValue<List<AssistantCategory>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

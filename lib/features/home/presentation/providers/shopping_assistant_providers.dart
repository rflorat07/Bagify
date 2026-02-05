import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/datasources.dart';
import '../../data/repositories/repositories.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

part 'shopping_assistant_providers.g.dart';

// Provider for the remote data source
@riverpod
ShoppingAssistantRemoteDataSource shoppingAssistantRemoteDataSource(Ref ref) {
  return ShoppingAssistantRemoteDataSourceImpl();
}

// Provider for the repositor
@riverpod
ShoppingAssistantRepository shoppingAssistantRepository(Ref ref) {
  final remoteDataSource = ref.watch(shoppingAssistantRemoteDataSourceProvider);
  return ShoppingAssistantRepositoryImpl(remoteDataSource: remoteDataSource);
}

// Provider for the use case
@riverpod
FetchAssistantCategoriesUseCase fetchAssistantCategoriesUseCase(Ref ref) {
  final repository = ref.watch(shoppingAssistantRepositoryProvider);
  return FetchAssistantCategoriesUseCase(repository);
}

// Notifier for AssistantCategories data, handling async state
@riverpod
class AssistantCategoriesNotifier extends _$AssistantCategoriesNotifier {
  // Builds the initial AssistantCategories data asynchronously
  @override
  Future<List<AssistantCategory>> build() async {
    final fetchAssistantCategoriesUseCase = ref.watch(
      fetchAssistantCategoriesUseCaseProvider,
    );
    return await fetchAssistantCategoriesUseCase.call();
  }
}

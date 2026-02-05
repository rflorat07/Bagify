import '../entities/entities.dart';
import '../repositories/repositories.dart';

class FetchAssistantCategoriesUseCase {
  final ShoppingAssistantRepository repository;

  FetchAssistantCategoriesUseCase(this.repository);

  Future<List<AssistantCategory>> call() {
    return repository.fetchAssistantCategories();
  }
}

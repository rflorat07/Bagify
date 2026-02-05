import '../entities/entities.dart';

abstract interface class ShoppingAssistantRepository {
  Future<List<AssistantCategory>> fetchAssistantCategories();
}

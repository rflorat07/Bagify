import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_client.dart';
import '../models/models.dart';

abstract class ShoppingAssistantRemoteDataSource {
  Future<List<AssistantCategoryModel>> fetchAssistantCategories();
}

class ShoppingAssistantRemoteDataSourceImpl
    implements ShoppingAssistantRemoteDataSource {
  @override
  Future<List<AssistantCategoryModel>> fetchAssistantCategories() async {
    try {
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/products/categories',
      );

      final categories = (response.data as List)
          .map((category) => AssistantCategoryModel.fromJson(category))
          .toList();

      return categories;
    } catch (e) {
      throw ServerFailure(message: 'Failed to fetch assistant categories: $e');
    }
  }
}

import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class ShoppingAssistantRepositoryImpl implements ShoppingAssistantRepository {
  final ShoppingAssistantRemoteDataSource remoteDataSource;

  ShoppingAssistantRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<AssistantCategory>> fetchAssistantCategories() async {
    final categoryModels = await remoteDataSource.fetchAssistantCategories();
    return categoryModels.map((model) => model.toEntity()).toList();
  }
}

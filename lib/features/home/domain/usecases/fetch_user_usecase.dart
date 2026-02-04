import '../entities/entities.dart';
import '../repositories/repositories.dart';

class FetchUserUseCase {
  final UserRepository _repository;

  FetchUserUseCase(this._repository);

  Future<User> call() async {
    return await _repository.fetchUser();
  }
}

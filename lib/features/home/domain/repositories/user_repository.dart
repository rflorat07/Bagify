import '../entities/entities.dart';

abstract interface class UserRepository {
  Future<User> fetchUser();
}

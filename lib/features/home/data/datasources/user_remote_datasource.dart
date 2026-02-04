import '../../../../core/errors/errors.dart';
import '../../../../core/network/network.dart';
import '../models/models.dart';

abstract interface class UserRemoteDataSource {
  Future<UserModel> fetchUser();
}

final class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<UserModel> fetchUser() async {
    try {
      // Make the request using NetworkClient
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/users/1',
      );

      // Parse the response using Freezed fromJson
      final user = UserModel.fromJson(response.data);
      return user;
    } catch (e) {
      // In case of error, return local data as fallback
      throw ServerFailure(message: 'Failed to fetch user data: $e');
    }
  }
}

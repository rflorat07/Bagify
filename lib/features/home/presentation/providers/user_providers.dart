// Provider for the DataSource (injects Dio if necessary)
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/datasources.dart';
import '../../data/repositories/repositories.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

part 'user_providers.g.dart';

// Provider for the remote data source
@riverpod
UserRemoteDataSource userRemoteDataSource(Ref ref) {
  return UserRemoteDataSourceImpl();
}

// Provider for the repository
@riverpod
UserRepository userRepository(Ref ref) {
  final remoteDataSource = ref.watch(userRemoteDataSourceProvider);
  return UserRepositoryImpl(remoteDataSource);
}

// Provider for the use case
@riverpod
FetchUserUseCase fetchUserUseCase(Ref ref) {
  final repository = ref.watch(userRepositoryProvider);
  return FetchUserUseCase(repository);
}

// Notifier for user data, handling async state
@riverpod
class UserNotifier extends _$UserNotifier {
  // Builds the initial user data asynchronously
  @override
  Future<User> build() async {
    final fetchUserUseCase = ref.watch(fetchUserUseCaseProvider);
    return await fetchUserUseCase.call();
  }

  // Refreshes the user data by invalidating the provider
  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

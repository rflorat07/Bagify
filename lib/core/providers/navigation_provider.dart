import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_provider.g.dart';

@riverpod
class NavigationController extends _$NavigationController {
  @override
  int build() => 0; // Initial index is 0

  void setIndex(int index) {
    state = index;
  }

  int get currentIndex => state;
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_provider.g.dart';

@riverpod
class AutoProvider extends _$AutoProvider {
  @override
  int build() => 10;

  void increment() => state++;
}

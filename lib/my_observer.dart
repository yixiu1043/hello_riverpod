import 'package:flutter_riverpod/flutter_riverpod.dart';

// 继承 ProviderObserver，重写感兴趣的方法即可
class MyObserver extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    print(
      '[Provider更新] ${provider.name ?? provider.runtimeType} '
      '从 $previousValue -> $newValue'
    );
  }

  @override
  void didAddProvider(ProviderBase provider, Object? value, ProviderContainer container) {
    print('[Provider创建] ${provider.name ?? provider.runtimeType}：$value');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    print('[Provider释放] ${provider.name ?? provider.runtimeType}');
  }
}
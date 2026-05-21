import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 假设异步获取用户名
final userNameProvider = FutureProvider<String>((ref) async {
  await Future.delayed(Duration(seconds: 2)); // 模拟网络延迟
  return "riverpod_user";
});


class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(userNameProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('User')),
      body: Center(
        child: asyncValue.when(
          data: (name) => Text('用户名: $name'),
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('出错: $err'),
        ),
      ),
    );
  }
}
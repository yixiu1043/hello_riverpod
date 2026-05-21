import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_riverpod/auto_provider.dart';
import 'home_page.dart';

class CounterPage extends ConsumerWidget {
  final int init;

  const CounterPage({super.key, required this.init});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 将参数带回到Provider（或直接用参数初始化页面）
    final count = ref.watch(countProvider);
    final count2 = ref.watch(autoProviderProvider); // 自动生成的 provider！

    // 侧重 side-effect 场景，而非 UI rebuild
    ref.listen<int>(countProvider, (previous, next) {
      print('Counter changed: $next');
    });

    ref.listen<int>(autoProviderProvider, (previous, next) {
      print('Counter2 changed: $next');
    });

    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('初始值: $init'),
            SizedBox(height: 20),
            Text('当前值: $count'),
            Text('值2: $count2'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(countProvider.notifier).state++;
                ref.read(autoProviderProvider.notifier).increment();
              },
              child: Text('增加'),
            ),
            ElevatedButton(onPressed: () => context.pop(), child: Text('返回')),
          ],
        ),
      ),
    );
  }
}

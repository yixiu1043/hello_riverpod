import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// 使用StateNotifier可以封装业务逻辑
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() => state++; // 业务逻辑分离到方法中
  void reset() => state = 0;
}

final counter2Provider = StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());


class Counter2Page extends ConsumerWidget {
  const Counter2Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count2 = ref.watch(counter2Provider); // 获取值
    final notifier = ref.read(counter2Provider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('当前值: $count2'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                notifier.increment(); // 通过公开方法变更
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

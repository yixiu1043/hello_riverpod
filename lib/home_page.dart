import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'page.dart';

final countProvider = StateProvider<int>((ref) => 0);

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('当前计数: $count')),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            tooltip: '计数页',
            onPressed: () => CounterRoute(count: count).push(context),
          ),
          IconButton(icon: const Icon(Icons.person), tooltip: '用户页', onPressed: () => const UserRoute().push(context)),
           TextButton(
            child: Text('主题页'),
            onPressed: () => const Theme1Route().push(context),
          ),
          TextButton(
            child: Text('数据依赖案例'),
            onPressed: () => const DependenceRoute().push(context),
          ),
          TextButton(
            child: Text('局部刷新'),
            onPressed: () => const LessBuildRoute().push(context),
          ),
        ],
      ),
    );
  }
}

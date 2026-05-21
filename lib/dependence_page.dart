import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final baseProvider = StateProvider<int>((ref) => 1);
final doubleProvider = Provider<int>((ref) => ref.watch(baseProvider) * 2);

class DependencePage extends ConsumerWidget {
  const DependencePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(baseProvider);
    final count2 = ref.watch(doubleProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('值1: $count'),
            SizedBox(height: 20),
            Text('值2: $count2'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(baseProvider.notifier).state++;
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

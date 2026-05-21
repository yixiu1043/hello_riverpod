import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_riverpod/auto_provider.dart';

class LessBuildPage extends StatelessWidget {
  const LessBuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('不会自动刷新'),
            // 只有这一块会因 Provider 更变而刷新
            SizedBox(height: 20),

            Consumer(
              builder: (context, ref, child) {
                final count = ref.watch(autoProviderProvider);
                return Text('计数状态：$count');
              },
            ),
            Text('底部内容'),
            SizedBox(height: 20),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return ElevatedButton(
                  onPressed: () {
                    ref.read(autoProviderProvider.notifier).increment();
                  },
                  child: Text('增加'),
                );
              },
            ),
            ElevatedButton(onPressed: () => context.pop(), child: Text('返回')),
          ],
        ),
      ),
    );
  }
}

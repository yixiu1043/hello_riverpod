import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isDark = false;

  void toggle() {
    isDark = !isDark;
    notifyListeners();
  }
}

final themeProvider = ChangeNotifierProvider<ThemeNotifier>((ref) => ThemeNotifier());

class Theme1Page extends ConsumerWidget {
  const Theme1Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Theme')),
      body: Center(
        child: Switch(
          value: themeNotifier.isDark,
          onChanged: (_) => themeNotifier.toggle(),
        ),
      ),
    );
  }
}

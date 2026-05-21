import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'my_observer.dart';
import 'page.dart';

final _router = GoRouter(
  routes: $appRoutes, // ⭐️ 由 go_router_builder 自动生成的路由表
);

void main() {
  runApp(ProviderScope(observers: [MyObserver()], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Riverpod + GoRouter Example', routerConfig: _router);
  }
}

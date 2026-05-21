import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_riverpod/counter2_page.dart';

import 'counter_page.dart';
import 'dependence_page.dart';
import 'home_page.dart';
import 'less_build_page.dart';
import 'user_page.dart';
import 'theme1_page.dart';
import 'counter2_page.dart';

part 'page.g.dart';

// 首页
@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomePage();
}

// 计数页面（带参数）
@TypedGoRoute<CounterRoute>(path: '/counter/:count')
class CounterRoute extends GoRouteData {
  final int count;

  const CounterRoute({required this.count});

  @override
  Widget build(BuildContext context, GoRouterState state) => CounterPage(init: count);
}

// 用户页
@TypedGoRoute<UserRoute>(path: '/user')
class UserRoute extends GoRouteData {
  const UserRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const UserPage();
}

// 主题页
@TypedGoRoute<Theme1Route>(path: '/theme')
class Theme1Route extends GoRouteData {
  const Theme1Route();

  @override
  Widget build(BuildContext context, GoRouterState state) => const Theme1Page();
}

@TypedGoRoute<Counter2Route>(path: '/counter2')
class Counter2Route extends GoRouteData {
  const Counter2Route();

  @override
  Widget build(BuildContext context, GoRouterState state) => Counter2Page();
}

@TypedGoRoute<DependenceRoute>(path: '/dependence')
class DependenceRoute extends GoRouteData {
  const DependenceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => DependencePage();
}

@TypedGoRoute<LessBuildRoute>(path: '/less_build')
class LessBuildRoute extends GoRouteData {
  const LessBuildRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => LessBuildPage();
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $counterRoute,
      $userRoute,
      $theme1Route,
      $counter2Route,
      $dependenceRoute,
      $lessBuildRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $counterRoute => GoRouteData.$route(
      path: '/counter/:count',
      factory: $CounterRouteExtension._fromState,
    );

extension $CounterRouteExtension on CounterRoute {
  static CounterRoute _fromState(GoRouterState state) => CounterRoute(
        count: int.parse(state.pathParameters['count']!),
      );

  String get location => GoRouteData.$location(
        '/counter/${Uri.encodeComponent(count.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userRoute => GoRouteData.$route(
      path: '/user',
      factory: $UserRouteExtension._fromState,
    );

extension $UserRouteExtension on UserRoute {
  static UserRoute _fromState(GoRouterState state) => const UserRoute();

  String get location => GoRouteData.$location(
        '/user',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $theme1Route => GoRouteData.$route(
      path: '/theme',
      factory: $Theme1RouteExtension._fromState,
    );

extension $Theme1RouteExtension on Theme1Route {
  static Theme1Route _fromState(GoRouterState state) => const Theme1Route();

  String get location => GoRouteData.$location(
        '/theme',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $counter2Route => GoRouteData.$route(
      path: '/counter2',
      factory: $Counter2RouteExtension._fromState,
    );

extension $Counter2RouteExtension on Counter2Route {
  static Counter2Route _fromState(GoRouterState state) => const Counter2Route();

  String get location => GoRouteData.$location(
        '/counter2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $dependenceRoute => GoRouteData.$route(
      path: '/dependence',
      factory: $DependenceRouteExtension._fromState,
    );

extension $DependenceRouteExtension on DependenceRoute {
  static DependenceRoute _fromState(GoRouterState state) =>
      const DependenceRoute();

  String get location => GoRouteData.$location(
        '/dependence',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $lessBuildRoute => GoRouteData.$route(
      path: '/less_build',
      factory: $LessBuildRouteExtension._fromState,
    );

extension $LessBuildRouteExtension on LessBuildRoute {
  static LessBuildRoute _fromState(GoRouterState state) =>
      const LessBuildRoute();

  String get location => GoRouteData.$location(
        '/less_build',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

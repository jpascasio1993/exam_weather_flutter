// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $weatherRoute,
    ];

GoRoute get $weatherRoute => GoRouteData.$route(
      path: '/',
      factory: $WeatherRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'weatherDetails/:id',
          factory: $WeatherDetailsRouteExtension._fromState,
        ),
      ],
    );

extension $WeatherRouteExtension on WeatherRoute {
  static WeatherRoute _fromState(GoRouterState state) => WeatherRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $WeatherDetailsRouteExtension on WeatherDetailsRoute {
  static WeatherDetailsRoute _fromState(GoRouterState state) =>
      WeatherDetailsRoute(
        int.parse(state.params['id']!),
      );

  String get location => GoRouteData.$location(
        '/weatherDetails/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

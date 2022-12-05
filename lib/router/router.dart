import 'package:exam_weather_flutter/di/inherited_dependency.dart';
import 'package:exam_weather_flutter/l10n/l10n.dart';
import 'package:exam_weather_flutter/ui/weather_details/weather_details.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_bloc/weather_bloc.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_details_bloc/weather_details_bloc.dart';
import 'package:exam_weather_flutter/ui/weathers/weathers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

typedef WrapperBuilder = Widget Function(BuildContext context, GoRouterState routerState, Widget child);

typedef Builder = Widget Function(BuildContext context, GoRouterState routerState);


class ScreenRoute {
  AppBar? appBar;
  bool useFade;
  WrapperBuilder? wrapperBuilder;
  Builder builder;

  ScreenRoute({this.appBar, this.useFade = false, this.wrapperBuilder, required this.builder});
}


final appRouter = GoRouter(routes: $appRoutes,
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: _handleRedirect);

String? _handleRedirect(BuildContext context, GoRouterState state) {
  // Prevent anyone from navigating away from `/` if app is starting up.
  debugPrint('Navigate to: ${state.location}');
  return null; // do nothing
}

abstract class BaseRoute<T> extends GoRouteData {
  ScreenRoute screen(BuildContext context);

  @override
  Page<T> buildPageWithState(BuildContext context, GoRouterState state) {
    final child = screen(context);
    final pageContent = Scaffold(
      appBar: child.appBar,
      body: child.wrapperBuilder != null
          ? child.wrapperBuilder!(context, state, child.builder(context, state))
          : child.builder(context, state),
      resizeToAvoidBottomInset: false,
    );
    if (child.useFade) {
      return CustomTransitionPage(
        key: state.pageKey,
        child: pageContent,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      );
    }
    return CupertinoPage<T>(child: pageContent);
  }
}

@TypedGoRoute<WeatherRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<WeatherDetailsRoute>(
      path: 'weatherDetails/:id',
    )
  ],
)
class WeatherRoute extends BaseRoute<void> {
  WeatherRoute() : super();

  @override
  ScreenRoute screen(BuildContext context) {
    return ScreenRoute(
        builder: (context, __) => const Weathers(),
        appBar: AppBar(
          title: Text(AppLocalization.of(context).appName),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          centerTitle: true,
        ),
        wrapperBuilder: (context, routerState, child) {
          final serviceLocator = InheritedDependency.of(context).serviceLocator;
          return BlocProvider(create: (context) => serviceLocator<WeatherBloc>(), lazy: false, child: child);
        });
  }
}

class WeatherDetailsRoute extends BaseRoute<void> {
  final int id;
  WeatherDetailsRoute(this.id): super();

  @override
  ScreenRoute screen(BuildContext context) {
    return ScreenRoute(
        builder: (context, __) => WeatherDetails(id: id),
        appBar: AppBar(
          title: Text(AppLocalization.of(context).appName),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          centerTitle: true,
        ),
        wrapperBuilder: (context, routerState, child) {
          final serviceLocator = InheritedDependency.of(context).serviceLocator;
          return BlocProvider(create: (context) => serviceLocator<WeatherDetailsBloc>(), lazy: false, child: child);
        });
  }
}

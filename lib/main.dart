import 'package:exam_weather_flutter/core/theme/default_theme.dart';
import 'package:exam_weather_flutter/di/inherited_dependency.dart';
import 'package:exam_weather_flutter/di/injection.dart';
import 'package:exam_weather_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:exam_weather_flutter/router/router.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection(GetIt.instance, environment: 'prod');
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp(getIt: GetIt.instance, themeData: defaultTheme));
}

class MyApp extends StatelessWidget {
  final GetIt getIt;
  final ThemeData themeData;

  const MyApp({super.key, required this.getIt, required this.themeData});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      builder: (context, child) => InheritedDependency(
          getIt: getIt,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: appRouter.routerDelegate,
            routeInformationProvider: appRouter.routeInformationProvider,
            routeInformationParser: appRouter.routeInformationParser,
            theme: themeData,
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalization.delegate.supportedLocales,
          )),
    );
  }
}

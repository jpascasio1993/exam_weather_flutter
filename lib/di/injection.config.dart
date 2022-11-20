// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/services/weather_service.dart' as _i4;
import 'core/core_dependencies.dart' as _i7;
import 'dev/dev_dependencies.dart' as _i6;
import 'prod/prod_dependencies.dart' as _i5;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final prodDependencies = _$ProdDependencies();
  final devDependencies = _$DevDependencies();
  final coreConfiguration = _$CoreConfiguration();
  gh.singleton<String>(
    prodDependencies.environment(),
    instanceName: 'env_url',
    registerFor: {_prod},
  );
  gh.singleton<String>(
    prodDependencies.weatherApiKey(),
    instanceName: 'api_key',
    registerFor: {_prod},
  );
  gh.singleton<String>(
    prodDependencies.baseApiUrl(),
    instanceName: 'api_base_url',
    registerFor: {_prod},
  );
  gh.singleton<String>(
    devDependencies.environment(),
    instanceName: 'env_url',
    registerFor: {_dev},
  );
  gh.singleton<String>(
    devDependencies.weatherApiKey(),
    instanceName: 'api_key',
    registerFor: {_dev},
  );
  gh.singleton<String>(
    devDependencies.baseApiUrl(),
    instanceName: 'api_base_url',
    registerFor: {_dev},
  );
  gh.lazySingleton<_i3.Dio>(() => coreConfiguration.getDio(
        baseUrl: get<String>(instanceName: 'api_base_url'),
        apiKey: get<String>(instanceName: 'api_key'),
      ));
  gh.lazySingleton<_i4.WeatherService>(
    () => prodDependencies.weatherService(
      dio: get<_i3.Dio>(),
      baseUrl: get<String>(instanceName: 'api_base_url'),
    ),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i4.WeatherService>(
    () => devDependencies.weatherService(
      dio: get<_i3.Dio>(),
      baseUrl: get<String>(instanceName: 'api_base_url'),
    ),
    registerFor: {_dev},
  );
  return get;
}

class _$ProdDependencies extends _i5.ProdDependencies {}

class _$DevDependencies extends _i6.DevDependencies {}

class _$CoreConfiguration extends _i7.CoreConfiguration {}

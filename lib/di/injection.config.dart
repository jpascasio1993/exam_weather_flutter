// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/database/dao/favorites_dao.dart' as _i4;
import '../data/database/dao/weather_dao.dart' as _i5;
import '../data/database/database.dart' as _i3;
import '../data/repository/weather_repository/i_weather_repository.dart' as _i8;
import '../data/services/weather_service.dart' as _i7;
import 'core/core_dependencies.dart' as _i9;
import 'dev/dev_dependencies.dart' as _i11;
import 'prod/prod_dependencies.dart' as _i10;

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
  final coreConfiguration = _$CoreConfiguration();
  final prodDependencies = _$ProdDependencies();
  final devDependencies = _$DevDependencies();
  gh.singleton<_i3.AppDatabase>(coreConfiguration.getAppDatabase());
  gh.lazySingleton<_i4.FavoritesDao>(
      () => coreConfiguration.favoritesDao(get<_i3.AppDatabase>()));
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
  gh.lazySingleton<_i5.WeatherDao>(
      () => coreConfiguration.weatherDao(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i6.Dio>(() => coreConfiguration.getDio(
        baseUrl: get<String>(instanceName: 'api_base_url'),
        apiKey: get<String>(instanceName: 'api_key'),
      ));
  gh.lazySingleton<_i7.WeatherService>(
    () => coreConfiguration.weatherService(
      dio: get<_i6.Dio>(),
      baseUrl: get<String>(instanceName: 'api_base_url'),
    ),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i8.IWeatherRepository>(
    () => coreConfiguration.weatherRepository(
      weatherDao: get<_i5.WeatherDao>(),
      favoritesDao: get<_i4.FavoritesDao>(),
      weatherService: get<_i7.WeatherService>(),
    ),
    registerFor: {_prod},
  );
  return get;
}

class _$CoreConfiguration extends _i9.CoreConfiguration {}

class _$ProdDependencies extends _i10.ProdDependencies {}

class _$DevDependencies extends _i11.DevDependencies {}

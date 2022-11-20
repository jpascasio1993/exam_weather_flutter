import 'package:dio/dio.dart';
import 'package:exam_weather_flutter/di/i_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreConfiguration implements ICoreDependencies {

  @lazySingleton
  @override
  Dio getDio({@Named(API_BASE_URL) required String baseUrl, @Named(API_KEY) required String apiKey}) {
    Dio dio = Dio();
    dio.options.connectTimeout = 60000;
    dio.options.receiveTimeout = 60000;
    dio.options.responseType = ResponseType.json;
    dio.options.contentType = 'application/json';
    dio.options.followRedirects = false;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters.addAll({
          'units': 'metric',
          'appid': apiKey
        });
        return handler.next(options);
      },
    ));
    return dio;
  }
}
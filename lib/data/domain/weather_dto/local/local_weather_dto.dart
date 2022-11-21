import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_weather_dto.freezed.dart';

part 'local_weather_dto.g.dart';

@freezed
class LocalWeatherDTO with _$LocalWeatherDTO {
  LocalWeatherDTO._();
  @JsonSerializable(explicitToJson: true)
  factory LocalWeatherDTO({
    required int id,
    @Default('N/A') String city,
    @Default('N/A') String status,
    @Default(0.0) double tempMin,
    @Default(0.0) double tempMax,
    @Default(0.0) double temp,
    @Default(false) @JsonKey(name: 'fav') bool favorite,
  }) = _LocalWeatherDTO;

  factory LocalWeatherDTO.fromJson(Map<String, dynamic> json) => _$LocalWeatherDTOFromJson(json);

  Weather toDomain() => Weather.fromJson(toJson());
}

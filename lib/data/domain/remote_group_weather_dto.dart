import 'package:exam_weather_flutter/data/domain/weather_dto/remote/weather_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_group_weather_dto.freezed.dart';
part 'remote_group_weather_dto.g.dart';

@freezed
class RemoteGroupWeatherDTO with _$RemoteGroupWeatherDTO {
  const factory RemoteGroupWeatherDTO({
    @Default([]) List<WeatherDTO> weathers
}) = _RemoteGroupWeatherDTO;
  
  factory RemoteGroupWeatherDTO.fromJson(Map<String, dynamic> json) => _$RemoteGroupWeatherDTOFromJson(json);
}

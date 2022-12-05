// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_group_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteGroupWeatherDTO _$$_RemoteGroupWeatherDTOFromJson(
        Map<String, dynamic> json) =>
    _$_RemoteGroupWeatherDTO(
      weathers: (json['list'] as List<dynamic>?)
              ?.map((e) => WeatherDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RemoteGroupWeatherDTOToJson(
        _$_RemoteGroupWeatherDTO instance) =>
    <String, dynamic>{
      'list': instance.weathers.map((e) => e.toJson()).toList(),
    };

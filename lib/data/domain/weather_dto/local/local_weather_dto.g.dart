// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalWeatherDTO _$$_LocalWeatherDTOFromJson(Map<String, dynamic> json) =>
    _$_LocalWeatherDTO(
      id: json['id'] as int,
      city: json['city'] as String? ?? 'N/A',
      status: json['status'] as String? ?? 'N/A',
      tempMin: (json['tempMin'] as num?)?.toDouble() ?? 0.0,
      tempMax: (json['tempMax'] as num?)?.toDouble() ?? 0.0,
      temp: (json['temp'] as num?)?.toDouble() ?? 0.0,
      favorite: json['fav'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LocalWeatherDTOToJson(_$_LocalWeatherDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'status': instance.status,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'temp': instance.temp,
      'fav': instance.favorite,
    };

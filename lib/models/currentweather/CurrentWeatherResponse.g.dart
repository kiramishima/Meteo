// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CurrentWeatherResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return CurrentWeatherResponse(
    json['dt'] as int,
    json['coord'] == null
        ? null
        : Coord.fromJson(json['coord'] as Map<String, dynamic>),
    (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : WeatherItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['name'] as String,
    json['cod'] as int,
    json['main'] == null
        ? null
        : Main.fromJson(json['main'] as Map<String, dynamic>),
    json['clouds'] == null
        ? null
        : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
    json['id'] as int,
    json['sys'] == null
        ? null
        : Sys.fromJson(json['sys'] as Map<String, dynamic>),
    json['base'] as String,
    json['wind'] == null
        ? null
        : Wind.fromJson(json['wind'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CurrentWeatherResponseToJson(
        CurrentWeatherResponse instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'coord': instance.coord,
      'weather': instance.weather,
      'name': instance.name,
      'cod': instance.cod,
      'main': instance.main,
      'clouds': instance.clouds,
      'id': instance.id,
      'sys': instance.sys,
      'base': instance.base,
      'wind': instance.wind,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ItemHourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemHourly _$ItemHourlyFromJson(Map<String, dynamic> json) {
  return ItemHourly(
    json['dt'] as int,
    json['dt_txt'] as String,
    (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : WeatherItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['main'] == null
        ? null
        : Main.fromJson(json['main'] as Map<String, dynamic>),
    json['clouds'] == null
        ? null
        : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
    json['sys'] == null
        ? null
        : Sys.fromJson(json['sys'] as Map<String, dynamic>),
    json['wind'] == null
        ? null
        : Wind.fromJson(json['wind'] as Map<String, dynamic>),
    json['rain'] == null
        ? null
        : Rain.fromJson(json['rain'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemHourlyToJson(ItemHourly instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'dt_txt': instance.dtTxt,
      'weather': instance.weather,
      'main': instance.main,
      'clouds': instance.clouds,
      'sys': instance.sys,
      'wind': instance.wind,
      'rain': instance.rain,
    };

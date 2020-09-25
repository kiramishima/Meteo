// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Main _$MainFromJson(Map<String, dynamic> json) {
  return Main(
    (json['temp'] as num)?.toDouble(),
    (json['temp_min'] as num)?.toDouble(),
    (json['grnd_level'] as num)?.toDouble(),
    json['humidity'] as int,
    (json['pressure'] as num)?.toDouble(),
    (json['sea_level'] as num)?.toDouble(),
    (json['temp_max'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'temp_max': instance.tempMax,
    };

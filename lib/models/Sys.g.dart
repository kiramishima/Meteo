// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sys _$SysFromJson(Map<String, dynamic> json) {
  return Sys(
    json['country'] as String,
    json['sunrise'] as int,
    json['sunset'] as int,
    (json['message'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'message': instance.message,
    };

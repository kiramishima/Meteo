// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FiveDayResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiveDayResponse _$FiveDayResponseFromJson(Map<String, dynamic> json) {
  return FiveDayResponse(
    json['city'] == null
        ? null
        : City.fromJson(json['city'] as Map<String, dynamic>),
    json['cnt'] as int,
    json['cod'] as String,
    (json['message'] as num)?.toDouble(),
    (json['list'] as List)
        ?.map((e) =>
            e == null ? null : ItemHourly.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FiveDayResponseToJson(FiveDayResponse instance) =>
    <String, dynamic>{
      'city': instance.city,
      'cnt': instance.cnt,
      'cod': instance.cod,
      'message': instance.message,
      'list': instance.list,
    };

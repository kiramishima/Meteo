import 'package:json_annotation/json_annotation.dart';
import 'package:meteo/models/fivedayweather/City.dart';
import 'package:meteo/models/fivedayweather/ItemHourly.dart';

part 'FiveDayResponse.g.dart';

@JsonSerializable()
class FiveDayResponse {

  @JsonKey(name: "city")
  final City city;

  @JsonKey(name: "cnt")
  final int cnt;

  @JsonKey(name: "cod")
  final String cod;

  @JsonKey(name: "message")
  final double message;

  @JsonKey(name: "list")
  final List<ItemHourly> list;

  FiveDayResponse(this.city, this.cnt, this.cod, this.message, this.list);

  factory FiveDayResponse.fromJson(Map<String, dynamic> json) => _$FiveDayResponseFromJson(json);

}
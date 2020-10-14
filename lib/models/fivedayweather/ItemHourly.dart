import 'package:json_annotation/json_annotation.dart';
import 'package:meteo/models/Clouds.dart';
import 'package:meteo/models/WeatherItem.dart';
import 'package:meteo/models/Wind.dart';
import 'package:meteo/models/fivedayweather/Main.dart';
import 'package:meteo/models/fivedayweather/Rain.dart';
import 'package:meteo/models/fivedayweather/Sys.dart';

part 'ItemHourly.g.dart';

@JsonSerializable()
class ItemHourly  {

  @JsonKey(name: "dt")
  final int dt;

  @JsonKey(name: "dt_txt")
  final String dtTxt;

  @JsonKey(name: "weather")
  final List<WeatherItem> weather;

  @JsonKey(name: "main")
  final Main main;

  @JsonKey(name: "clouds")
  final Clouds clouds;

  @JsonKey(name: "sys")
  final Sys sys;

  @JsonKey(name: "wind")
  final Wind wind;

  @JsonKey(name: "rain")
  final Rain rain;

  ItemHourly(this.dt, this.dtTxt, this.weather, this.main, this.clouds, this.sys, this.wind, this.rain);

  factory ItemHourly.fromJson(Map<String, dynamic> json) => _$ItemHourlyFromJson(json);

}
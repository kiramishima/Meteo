
import 'package:json_annotation/json_annotation.dart';
import 'package:meteo/models/Clouds.dart';
import 'package:meteo/models/Coord.dart';
import 'package:meteo/models/Main.dart';
import 'package:meteo/models/Sys.dart';
import 'package:meteo/models/WeatherItem.dart';
import 'package:meteo/models/Wind.dart';

part 'CurrentWeatherResponse.g.dart';

@JsonSerializable()
class CurrentWeatherResponse {

  @JsonKey(name: "dt")
  final int dt;

  @JsonKey(name: "coord")
  final Coord coord;

  @JsonKey(name: "weather")
  final List<WeatherItem> weather;

  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "cod")
  final int cod;

  @JsonKey(name: "main")
  final Main main;

  @JsonKey(name: "clouds")
  final Clouds clouds;

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "sys")
  final Sys sys;

  @JsonKey(name: "base")
  final String base;

  @JsonKey(name: "wind")
  final Wind wind;

  CurrentWeatherResponse(this.dt, this.coord, this.weather, this.name, this.cod, this.main, this.clouds, this.id, this.sys, this.base, this.wind);

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) => _$CurrentWeatherResponseFromJson(json);
}
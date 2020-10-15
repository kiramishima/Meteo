import 'package:json_annotation/json_annotation.dart';

part 'Main.g.dart';

@JsonSerializable()
class Main {

  @JsonKey(name: "temp")
  final double temp;

  @JsonKey(name: "temp_min")
  final double tempMin;

  @JsonKey(name: "grnd_level")
  final double grndLevel;

  @JsonKey(name: "humidity")
  final int humidity;

  @JsonKey(name: "pressure")
  final double pressure;

  @JsonKey(name: "sea_level")
  final double seaLevel;

  @JsonKey(name: "temp_max")
  final double tempMax;

  Main(this.temp, this.tempMin, this.grndLevel, this.humidity, this.pressure, this.seaLevel, this.tempMax);
  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}
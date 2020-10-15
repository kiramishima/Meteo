import 'package:json_annotation/json_annotation.dart';

part 'Wind.g.dart';

@JsonSerializable()
class Wind {

  @JsonKey(name: "deg")
  final double deg;

  @JsonKey(name: "speed")
  final double speed;

  Wind(this.deg, this.speed);
  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
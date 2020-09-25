import 'package:json_annotation/json_annotation.dart';

part 'Sys.g.dart';

@JsonSerializable()
class Sys {

  @JsonKey(name: "country")
  final String country;

  @JsonKey(name: "sunrise")
  final int sunrise;

  @JsonKey(name: "sunset")
  final int sunset;

  @JsonKey(name: "message")
  final double message;

  Sys(this.country, this.sunrise, this.sunset, this.message);

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
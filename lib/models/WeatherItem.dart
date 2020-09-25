
import 'package:json_annotation/json_annotation.dart';

part 'WeatherItem.g.dart';

@JsonSerializable()
class WeatherItem {

  @JsonKey(name: "icon")
  final String icon;

  @JsonKey(name: "description")
  final String description;

  @JsonKey(name: "main")
  final String main;

  @JsonKey(name: "id")
  final int id;

  WeatherItem(this.icon, this.description, this.main, this.id);

  factory WeatherItem.fromJson(Map<String, dynamic> json) => _$WeatherItemFromJson(json);
}
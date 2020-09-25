import 'package:json_annotation/json_annotation.dart';

part 'Coord.g.dart';

@JsonSerializable()
class Coord {
  @JsonKey(name: "lon")
  final double lon;

  @JsonKey(name: "lat")
  final double lat;

  Coord(this.lon, this.lat);

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}
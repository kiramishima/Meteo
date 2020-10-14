import 'package:json_annotation/json_annotation.dart';
import 'package:meteo/models/Coord.dart';

part 'City.g.dart';

@JsonSerializable()
class City {
  @JsonKey(name: "country")
  final String country;

  @JsonKey(name: "coord")
  final Coord coord;

  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "population")
  final int population;

  City(this.country, this.coord, this.name, this.id, this.population);

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

}
import 'package:json_annotation/json_annotation.dart';

part 'Clouds.g.dart';

@JsonSerializable()
class Clouds {

  @JsonKey(name: "all")
  final int all;

  Clouds(this.all);

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}
import 'package:json_annotation/json_annotation.dart';

part 'Rain.g.dart';

@JsonSerializable()
class Rain {
  @JsonKey(name: "3h")
  final double jsonMember3h;

  Rain(this.jsonMember3h);

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}
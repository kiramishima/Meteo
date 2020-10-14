import 'package:json_annotation/json_annotation.dart';

part 'Sys.g.dart';

@JsonSerializable()
class Sys {

  @JsonKey(name: "pod")
  final String pod;

  Sys(this.pod);

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
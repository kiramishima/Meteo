import 'package:json_annotation/json_annotation.dart';

part 'MultipleDaysWeatherResponse.g.dart';

@JsonSerializable()
class MultipleDaysWeatherResponse {

  MultipleDaysWeatherResponse();

  factory MultipleDaysWeatherResponse.fromJson(Map<String, dynamic> json) => _$MultipleDaysWeatherResponseFromJson(json);
}
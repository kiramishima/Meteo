import 'package:dio/dio.dart';
import 'package:layouts/models/IPokemon.dart';
import 'package:layouts/models/result.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/pokemon")
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) {
    return _APIClient(dio, baseUrl: baseUrl);
  }
}
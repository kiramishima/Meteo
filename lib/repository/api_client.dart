import 'package:dio/dio.dart';
import 'package:meteo/models/CurrentWeatherResponse.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "")
abstract class APIClient {

  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  @GET("/weather")
  @DioResponseType(ResponseType.json)
  Future<CurrentWeatherResponse> getCurrentWeather(
      @Query("q") String q,
      @Query("units") String units,
      @Query("lang") String lang,
      @Query("appid") String appId
  );
}
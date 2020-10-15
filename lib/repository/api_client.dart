import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meteo/models/currentweather/CurrentWeatherResponse.dart';
import 'package:meteo/models/fivedayweather/FiveDayResponse.dart';
import 'package:meteo/models/daysweather/MultipleDaysWeatherResponse.dart';
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

  @GET("/forecast")
  @DioResponseType(ResponseType.json)
  Future<FiveDayResponse> getFiveDaysWeather(
      @Query("q") String q,
      @Query("units") String units,
      @Query("lang") String lang,
      @Query("appid") String appId
  );

  @GET("/forecast/daily")
  @DioResponseType(ResponseType.json)
  Future<MultipleDaysWeatherResponse> getMultipleDaysWeather(
      @Query("q") String q,
      @Query("units") String units,
      @Query("lang") String lang,
      @Query("cnt") int dayCount,
      @Query("appid") String appId
  );
}
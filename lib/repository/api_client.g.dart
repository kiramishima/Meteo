// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _APIClient implements APIClient {
  _APIClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<CurrentWeatherResponse> getCurrentWeather(
      q, units, lang, appId) async {
    ArgumentError.checkNotNull(q, 'q');
    ArgumentError.checkNotNull(units, 'units');
    ArgumentError.checkNotNull(lang, 'lang');
    ArgumentError.checkNotNull(appId, 'appId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': q,
      r'units': units,
      r'lang': lang,
      r'appid': appId
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/weather',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl,
            responseType: ResponseType.json),
        data: _data);
    final value = CurrentWeatherResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FiveDayResponse> getFiveDaysWeather(q, units, lang, appId) async {
    ArgumentError.checkNotNull(q, 'q');
    ArgumentError.checkNotNull(units, 'units');
    ArgumentError.checkNotNull(lang, 'lang');
    ArgumentError.checkNotNull(appId, 'appId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': q,
      r'units': units,
      r'lang': lang,
      r'appid': appId
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/forecast',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl,
            responseType: ResponseType.json),
        data: _data);
    final value = FiveDayResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<MultipleDaysWeatherResponse> getMultipleDaysWeather(
      q, units, lang, dayCount, appId) async {
    ArgumentError.checkNotNull(q, 'q');
    ArgumentError.checkNotNull(units, 'units');
    ArgumentError.checkNotNull(lang, 'lang');
    ArgumentError.checkNotNull(dayCount, 'dayCount');
    ArgumentError.checkNotNull(appId, 'appId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': q,
      r'units': units,
      r'lang': lang,
      r'cnt': dayCount,
      r'appid': appId
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/forecast/daily',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl,
            responseType: ResponseType.json),
        data: _data);
    final value = MultipleDaysWeatherResponse.fromJson(_result.data);
    return value;
  }
}

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
  getCurrentWeather(q, units, lang, appId) async {
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
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/weather',
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
}

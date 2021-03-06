
import 'package:flutter/material.dart';
import 'package:meteo/models//currentweather/CurrentWeatherResponse.dart';
import 'package:provider/provider.dart';

class Weather extends ChangeNotifier {
  CurrentWeatherResponse data = null;
  bool get hasData => data != null ? true : false;

  static Weather of(BuildContext context, {bool listen = false}) =>
      Provider.of<Weather>(context, listen: listen);

  void setData(CurrentWeatherResponse data) {
    this.data = data;
    notifyListeners();
  }
}
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meteo/models/weather.dart';
import 'package:meteo/repository/api_client.dart';
import 'package:meteo/utils/Constants.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  final String title;
  MainPage({Key key, this.title}): super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  final String defaultLang = "en";
  final apiClient = new APIClient(Dio(), baseUrl: Constants.BASE_URL);

  void initValues() async {
    Weather model = Weather.of(context, listen: true);
    final apiKey = "ed7a3fb11c9b75af6b8c97490c99f8af";
    final cityName = "Mexico City";
    if (!model.hasData) {
      apiClient.getCurrentWeather(cityName, Constants.UNITS, defaultLang, apiKey).then((item) {
            model.setData(item);
          }
      );
    }
  }

  /*@override
  void didChangeDependencies() {

  }*/

  @override
  void initState() {
    this.initValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Weather>(
        builder: (context, model, child) => Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              child: Container(
                color: Colors.deepPurpleAccent,
                child: Text(model.data.name),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:dartz/dartz.dart' as dartz;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:meteo/models/CurrentWeatherResponse.dart';
import 'package:meteo/models/weather.dart';
import 'package:meteo/repository/api_client.dart';
import 'package:meteo/utils/Constants.dart';
import 'package:meteo/widgets/current_weather_box.dart';
import 'package:meteo/widgets/forecast_item_card.dart';
import 'package:provider/provider.dart';
import 'package:sprintf/sprintf.dart';

class MainPage extends StatefulWidget {
  final String title;
  MainPage({Key key, this.title}): super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  final String defaultLang = "en";
  final apiClient = new APIClient(Dio(), baseUrl: Constants.BASE_URL);
  CurrentWeatherResponse currentWeather = null;

  void initValues() async {
    Weather model = Weather.of(context, listen: true);
    final apiKey = "ed7a3fb11c9b75af6b8c97490c99f8af";
    final cityName = "Mexico City";
    if (!model.hasData) {
      try {
        model.setData(await apiClient.getCurrentWeather(cityName, Constants.UNITS, defaultLang, apiKey));
      }
      on Exception catch (ex) {
        print("ex: ${ex}");
      }
    }
  }

  @override
  void didChangeDependencies() {
    this.initValues();
  }

  @override
  void initState() {
    super.initState();
  }

  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    Weather model = Weather.of(context, listen: true);
    return new AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: new Text(model.data != null ? model.data.name : "", style: TextStyle(color: Colors.black),),
      actions: [searchBar.getSearchAction(context)]
    );
  }

  _MainPageState() {
    searchBar = new SearchBar(
        inBar: false,
        setState: setState,
        onSubmitted: print,
        buildDefaultAppBar: buildAppBar
    );
  }

  @override
  Widget build(BuildContext context) {
    // String Temp = sprintf("%.0f", 30.25);
    return Scaffold(
      appBar: searchBar.build(context),
      body: Consumer<Weather>(
        builder: (context, model, child) => Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text("Current",
              style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,),
            CurrentWeatherBox(temp: 30.0,),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15.0, top: 15.0),
                child: Text("Next 4 Days/Hourly",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25.0),
                  textAlign: TextAlign.start,),
              ),
            ),

            Expanded(
              flex: 4,
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ForecastItemCard(),
                    ForecastItemCard(),
                    ForecastItemCard(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(color: Colors.blue,),
            ),
            // model.data != null ?  new CurrentWeatherBox(temp: model.data.main.temp) : Center(child: CircularProgressIndicator(),),
          ],
        ),
      ),
    );
  }
}
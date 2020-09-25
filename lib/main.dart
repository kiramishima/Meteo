import 'package:flutter/material.dart';
import 'package:meteo/app.router.dart';
import 'package:meteo/models/weather.dart';
// import 'package:meteo/pages/home.dart';
import 'package:meteo/pages/main.dart';
import 'package:provider/provider.dart';

void main() async {
  Routes.createRoutes();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<Weather>(create: (_) => Weather()),
        ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(title: 'Weather App'),
        navigatorKey: Routes.sailor.navigatorKey,
        onGenerateRoute: Routes.sailor.generator(),
      ),
    );
  }
}

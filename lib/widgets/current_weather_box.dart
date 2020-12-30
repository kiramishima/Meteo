import 'package:flutter/material.dart';

class CurrentWeatherBox extends StatelessWidget {
  final double temp;
  final sc = ScrollController();
  CurrentWeatherBox({this.temp});

  @override
  Widget build(BuildContext context) {
    // String Temp = sprintf("%.0f°", temp);
    return Expanded(
        flex: 4,
        child: SingleChildScrollView(
          controller: sc,
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(30.0),
            ),
            width: MediaQuery.of(context).size.width - 25,
            height: MediaQuery.of(context).size.height/3,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("30.0°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0), textAlign: TextAlign.center,),
                  Text("Rain", style: TextStyle(color: Colors.white, fontSize: 15.0), textAlign: TextAlign.center,),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Humidity 35%", style: TextStyle(color: Colors.white, fontSize: 15.0), textAlign: TextAlign.start,),
                            SizedBox(height: 20.0,),
                            Text("Wind 4 km/hr", style: TextStyle(color: Colors.white, fontSize: 15.0), textAlign: TextAlign.start,),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/images/ic_shower_rain.png")
                      )
                    ],
                  ),


                ]
            ),
          ),
        )
    );
  }
}
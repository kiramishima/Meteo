import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meteo/app.router.dart';
// import 'package:meteo/pages/secret.dart';
import 'package:sailor/sailor.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _buildAppBar() {
    return AppBar(
      title: Text(widget.title),

    );
  }

  Widget _buildBox({int points, Color color, Color textColor = Colors.white}) {
    return Expanded(
      flex: points,
      child: Container(
        constraints: BoxConstraints.expand(),
        color: color,
        child: Center(
          child: Text(
            '$points',
            style: TextStyle(fontSize: 32.0, color: textColor),
          ),
        ),
      ),
    );
  }


  Widget _buildBody(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            SizedBox(
              child: Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.amberAccent,
                child: Text("data 3", style: TextStyle(color: Colors.white, fontSize: 20.0),)
              ),
            ),
              SizedBox(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.green,
                  child: Text("data 1", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                ),
              ),
              SizedBox(
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.purple,
                  child: Text("data 2", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                ),
              ),
              SizedBox(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.pinkAccent,
                  child: Text("data 3", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                ),
              ),
          ],
        ),
      ]
    );
  }

  Widget _buildBody2(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: 500.0
        ),
        child: Column(
              children: <Widget>[
                _buildBox(points: 8, color: Colors.red),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: <Widget>[
                      _buildBox(points: 5, color: Colors.indigo),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: <Widget>[
                                        _buildBox(points: 1, color: Colors.green),
                                        _buildBox(points: 1, color: Colors.blue)
                                      ],
                                    ),
                                  ),
                                  _buildBox(points: 2, color: Colors.brown)
                                ],
                              ),
                            ),
                            _buildBox(points: 3, color: Colors.purple)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
    );
  }

  Widget _buildStack(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: 300.0,
          height: 300.0,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Positioned(
          left: 10.0,
          top: 10.0,
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.indigo,
          ),
        ),
        Positioned(
          right: 40.0,
          top: 40.0,
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.red,
          ),
        ),
        Positioned(
          left: 40.0,
          bottom: 40.0,
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.green,
          ),
        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody2(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await Routes.sailor.navigate<bool>(
            "/secret",
            transitions: [SailorTransition.slide_from_top],
            params: {'id': 12}, // args: SecretPageArgs("Multi Page!")
          );
          print("Hello");
          print("Response from SecondPage: $response");
        },
      ),
    );
  }
}
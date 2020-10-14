import 'package:flutter/material.dart';

class ForecastItemCard extends StatelessWidget {
  ForecastItemCard();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 5, left: 5),
      // elevation: 0.0,
      // margin: EdgeInsets.symmetric(horizontal: 15.0),
      // shape: RoundedRectangleBorder(
      //    borderRadius: BorderRadius.circular(30.0)
      //),
      //color: Colors.tealAccent,
      child: Container(

        decoration: BoxDecoration(
          color: Colors.tealAccent,
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.only(top: 20.0),
        width: 150.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Thursday", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            Image.asset("assets/images/ic_broken_clouds.png", width: 125.0,),
            Text("20.5°", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0), textAlign: TextAlign.center,),
            SizedBox(height: 5.0,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.keyboard_arrow_up,
                          size: 30.0,
                        ),
                        Text("11°", style: TextStyle(fontSize: 25.0),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30.0,
                        ),
                        Text("75°", style: TextStyle(fontSize: 25.0),)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
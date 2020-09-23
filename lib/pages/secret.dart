import 'package:flutter/material.dart';
import 'package:meteo/app.router.dart';
import 'package:sailor/sailor.dart';

class SecretPage extends StatelessWidget {
  SecretPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final args = Sailor.args<SecretPageArgs>(context);
    final id = Sailor.param<int>(context, 'id');

    return Scaffold(
      appBar: AppBar(
        title: Text("Secret Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(args?.text ?? "Default Secret"),
            Text("Param('id'): $id"),
            RaisedButton(
              child: Text('Close Page'),
              onPressed: () {
                Routes.sailor.pop(true);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecretPageArgs extends BaseArguments {
  final String text;
  SecretPageArgs(this.text): assert(text != null);
}
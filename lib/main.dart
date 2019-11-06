import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(BestTrain());

class BestTrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BestTrain',
      debugShowCheckedModeBanner: false,
      // Set Raleway as the default app font
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    new Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Colors.green
                      ),
                    )
                  ]
                )
              ]
          )
    ));
  }

}
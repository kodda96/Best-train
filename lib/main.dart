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
                    alignment: Alignment.center,
                    children: <Widget>[
                      new Container(
                        margin: new EdgeInsets.only(bottom: 40.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(50.0),
                            color: Color(0xFFFC6A7F)),
                        child: new Icon(
                          Icons.directions_transit,
                          color: Colors.white,
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(50.0),
                            color: Color(0xFF18D191)),
                        child: new Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                      new Container(
                        margin: new EdgeInsets.only(left: 50.0, top: 50.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(50.0),
                            color: Color(0xFFFFCE56)),
                        child: new Icon(
                          Icons.phone_iphone,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                        child: new Text(
                          "BestTrain",
                          style: new TextStyle(fontSize: 30.0),
                        ),
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 10.0, top: 10.0),
                          child: new Container(
                            margin: EdgeInsets.only(right: 30.0, left: 30.0),
                            alignment: Alignment.center,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                color: Color(0xFF18D191),
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: new Text("Login", style: new TextStyle(
                                fontSize: 20.0, color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 10.0, top: 10.0),
                          child: new Container(
                            margin: EdgeInsets.only(right: 30.0, left: 30.0),
                            alignment: Alignment.center,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                color: Color(0xFF18D191),
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: new Text("Login As a Guest", style: new TextStyle(
                                fontSize: 20.0, color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  )
                ])));
  }
}

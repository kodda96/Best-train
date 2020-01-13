import 'package:flutter/material.dart';
import 'stacked_icons.dart';

class Train extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TrainState();
  }
}

class _TrainState extends State<Train> {
  var _stationsNames = [
    '[Select a Station]',
    'ABANPOLA',
    'ADAGALA',
    'AHANGAMA',
    'AHUNGALLE',
    'AKBOPURA',
    'AKURALA',
    'ALAWWA',
    'ALUTHGAMA',
    'AMBALANGODA'
  ];
  var _currentItemSelected = '[Select a Station]';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StackedIcons(), // display the app logout
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
            new Text(
              'Railway Station Information',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 20.0),
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 100.0, top: 20.0),
                  child: DropdownButton<String>(
                    items: _stationsNames.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: new Container(
                            child: Text(
                          dropDownStringItem,
                          style: TextStyle(color: Colors.black),
                        ),
                        width: 130.0,
                        ),
                      );
                    }).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this._currentItemSelected = newValueSelected;
                      });
                    },
                    elevation: 50,
                    value: _currentItemSelected,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'stacked_icons.dart';

class TrainSchedule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TrainScheduleState();
  }
}

class _TrainScheduleState extends State<TrainSchedule> {
  var _stations = [
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
  var _currentItemSelected1 = 'ABANPOLA';
  var _currentItemSelected2 = 'ABANPOLA';

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
            new StackedIcons(),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: new Text(
                    'Source',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                new SizedBox(
                  width: 100.0,
                ),
                DropdownButton<String>(
                  items: _stations.map((String dropDownStringItem) {
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
                      this._currentItemSelected1 = newValueSelected;
                    });
                  },
                  elevation: 50,
                  value: _currentItemSelected1,
                )
              ],
            ),
            new SizedBox(
              height: 20.0,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: new Text(
                    'Destination',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                new SizedBox(
                  width: 60.0,
                ),
                DropdownButton<String>(
                  items: _stations.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: new Container(
                        child: Text(
                          dropDownStringItem,
                          style: TextStyle(color: Colors.black),
                        ),
                        width: 120.0,
                      ),
                    );
                  }).toList(),
                  onChanged: (String newValueSelected) {
                    setState(() {
                      this._currentItemSelected2 = newValueSelected;
                    });
                  },
                  elevation: 50,
                  value: _currentItemSelected2,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: GestureDetector(
                      /*onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },*/
                      child: new Container(
                        margin: EdgeInsets.only(
                            right: 30.0, left: 30.0, bottom: 200.0),
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 150.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text("Search",
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

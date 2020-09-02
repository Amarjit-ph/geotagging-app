import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(0, 80, 0, 0)),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('New Survey'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('View Data'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Upload'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Setting'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ), // Populate the Drawer in the next step.
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Home'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Center(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 23),
              child: Text(
                'GeoTagging - Department of Agriculture',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            )),
            // CIRCLES
            Container(
              height: 230,
              padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 150.0,
                        child: Center(
                          child: Text(
                            '447',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          border: new Border.all(
                            width: 3.0,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Text(
                        'Survey Conducted',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 150.0,
                          height: 150.0,
                          child: Center(
                            child: Text(
                              '09',
                              style: TextStyle(fontSize: 35),
                            ),
                          ),
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(100.0),
                            border: new Border.all(
                              width: 3.0,
                              color: Colors.orange[700],
                            ),
                          ),
                        ),
                        Text('Uploads Pending',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))
                      ])
                ],
              ),
            ),
            //SPACE
            Container(
              height: 20,
              padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
              color: Colors.grey[300],
            ),

            //SQUARE DATAs
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Rakesh Singh',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ButtonTheme(
                    minWidth: 15.0,
                    height: 25.0,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('987654210',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ButtonTheme(
                    minWidth: 15.0,
                    height: 25.0,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Agriculture Officer',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ButtonTheme(
                    minWidth: 15.0,
                    height: 25.0,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Zone 4',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ButtonTheme(
                    minWidth: 15.0,
                    height: 25.0,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

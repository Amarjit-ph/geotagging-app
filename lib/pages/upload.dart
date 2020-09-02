import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  Upload({Key key}) : super(key: key);

  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Upload'),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
                height: 650,
                width: 500,
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Farm 5',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Icon(Icons.cloud_upload, color: Colors.lightBlue),
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
                          Text('Farm 4',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Icon(Icons.cloud_upload, color: Colors.lightBlue),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
                      color: Colors.grey[300],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Farm 3',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Icon(Icons.check, color: Colors.green)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
                      color: Colors.grey[300],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Farm 2',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Icon(Icons.check, color: Colors.green)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(23, 0, 23, 0),
                      color: Colors.grey[300],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Farm 1',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Icon(Icons.check, color: Colors.green),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                      child: ButtonTheme(
                        minWidth: 500.0,
                        height: 35.0,
                        child: RaisedButton(
                          color: Colors.yellow[700],
                          onPressed: () {},
                          child: Text(
                            "UPLOAD ALL",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}

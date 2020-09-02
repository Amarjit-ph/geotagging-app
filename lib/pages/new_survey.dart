import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class NewSurvey extends StatefulWidget {
  NewSurvey({Key key}) : super(key: key);

  @override
  _NewSurveyState createState() => _NewSurveyState();
}

class _NewSurveyState extends State<NewSurvey> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Select Project';
  String dropdownValue1 = 'Select Scheme';
  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          backgroundColor: Colors.green,
          title: Text('New Survey'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
              height: 596,
              width: 500,
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 350,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        //icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey),
                        underline: Container(
                          height: 2,
                          color: Colors.grey,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Select Project', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 16),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: ListTile(
                          title: const Text('Scheme'),
                          leading: Radio(
                            activeColor: Colors.green,
                            value: SingingCharacter.lafayette,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        )),
                        Expanded(
                            child: ListTile(
                          title: const Text('Farm'),
                          leading: Radio(
                            activeColor: Colors.green,
                            value: SingingCharacter.jefferson,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        )),
                      ],
                    ),
                    Container(
                      width: 350,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue1,
                        //icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey),
                        underline: Container(
                          height: 2,
                          color: Colors.grey,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue1 = newValue;
                          });
                        },
                        items: <String>['Select Scheme', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 16),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Item Name',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'No of Items',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Farmer Name',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(children: <Widget>[
                          Container(
                            width: 150,
                            height: 150,
                            child: Image.asset('assets/1.jpeg'),
                          ),
                          Container(
                            width: 150,
                            height: 101,
                            child: Image.asset('assets/2.jpg'),
                          ),
                        ])),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ButtonTheme(
                        minWidth: 500.0,
                        height: 35.0,
                        child: RaisedButton(
                          color: Colors.yellow[700],
                          onPressed: () {},
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}

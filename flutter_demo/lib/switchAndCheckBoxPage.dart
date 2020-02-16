import 'package:flutter/material.dart';

class SwitchAndCheckBoxPage extends StatefulWidget {
  @override
  _SwitchAndCheckBoxPageState createState() =>
      new _SwitchAndCheckBoxPageState();
}

class _SwitchAndCheckBoxPageState extends State<SwitchAndCheckBoxPage> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: new Text('Switch And CheckBox'),
            ),
            body: Column(
              children: <Widget>[
                Switch(
                  value: _switchSelected,
                  onChanged: (value) {
                    setState(() {
                      _switchSelected = value;
                    });
                  },
                ),
                Checkbox(
                  value: _checkboxSelected,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      _checkboxSelected = value;
                    });
                  },
                ),
              ],
            )));
  }
}

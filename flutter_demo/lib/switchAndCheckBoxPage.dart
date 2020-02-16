import 'package:flutter/material.dart';

class SwitchAndCheckBoxPage extends StatefulWidget {
  @override
  _SwitchAndCheckBoxPageState createState() =>
      new _SwitchAndCheckBoxPageState();
}

class _SwitchAndCheckBoxPageState extends State<SwitchAndCheckBoxPage> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;
  TextEditingController _selectionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: new Text('Switch And CheckBox'),
            ),
            body: Column(
              children: <Widget>[
                //单选按钮
                Switch(
                  value: _switchSelected,
                  onChanged: (value) {
                    setState(() {
                      _switchSelected = value;
                    });
                  },
                ),
                Text('男'),
                Checkbox(
                  value: _checkboxSelected,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      _checkboxSelected = value;
                    });
                  },
                ),
                //输入框
                TextField(
                  autofocus: true, //自动获取焦点
                  controller: _selectionController,
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '用户名或邮箱',
                      prefixIcon: Icon(Icons.person)),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: '您的登录密码',
                      prefixIcon: Icon(Icons.lock)),
                  obscureText: true,
                )
              ],
            )));
  }
}

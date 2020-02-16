import 'package:flutter/material.dart';
import 'package:flutter_demo/switchAndCheckBoxPage.dart';
import 'package:flutter_demo/tipRouter.dart';

import 'data_type.dart';
import 'less_group_page.dart';

void main() => runApp(SwitchAndCheckBoxPage());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page1'),
    );
  }
}

///有状态的widget
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//创建状态管理
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  ///build方法会构建widget树
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          maxLines: 11,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            // ignore: undefined_method
            DataType()
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

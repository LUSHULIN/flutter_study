import 'package:flutter/material.dart';

class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    trip();
    return Container(
      child: Text('常用数据类型'),
    );
  }

  ///常用数据类型
  void _numType() {
    num a = 10;
    int b = 12;
    double c = 11.1;
    var str = a.toString();
    print('a =$a,b = $b, c=$c');
  }

  ///字符串的使用
  _stringType() {
    String str1 = "jason", str2 = "lu";
    String str3 = 'str:$str1 str2:$str2';
    print(str3);
    String str5 = 'resume';
    // string.startsWith(new RegExp(r'[A-Z][a-z]')); // true
    print(str5.startsWith(new RegExp(r'[A-Z][a-z]')));
    str5.replaceAll(new RegExp(r'e'), 'é'); // 'résumé'
    print(str5);
  }

  //dynamic,var,nsobject 三者的区别
  trip() {
    dynamic a = "hello";
    var b = "flutter";
    Object c = "nba";
    print(a.runtimeType);
    print(b.runtimeType);
    print(c.runtimeType);
  }

  //面向对象学习
  oopLearn() {}
}

class Person {
  String name;
  int age;
  //构造方法
  Person(this.name, this.age);
  @override
  String toString() {
    // TODO: implement toString
    return 'name:$name, age:$age';
  }
}

class Student extends Person {
  String _school;
  String city;
  String country;
  String _name;
  static Student instance;

  String get name => _name;
  set name(String value) {
    name = value;
  }

  Student(this._school, String name, int age,
      {this.city, this.country = 'China'})
      : _name = '$country.$city',
        super(name, age) {
    print('构造方法不是必须的');
  }
}

class Logger {
  static Logger _cache;
  //工厂构造方法
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache;
  }
  Logger._internal();

  test() {
    var list = ["私有方法", "匿名方法"];
    list.forEach((i) {
      print(list.indexOf(i).toString() + ":" + i);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormTestRoute extends StatefulWidget {
  @override
  _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  //保存用户输入内容
  TextEditingController _unameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  //保存form的state
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('用户登录界面'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Form(
            key: _formKey, //设置globalKey用于后面获取FormState
            autovalidate: true, //开启自动验证
            child: Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '用户名或邮箱',
                      icon: Icon(Icons.person)),
                  //校验用户名
                  validator: (v) {
                    return v.trim().length > 0 ? null : '用户名不能为空';
                  },
                ),
                TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '您的登录密码',
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                  validator: (value) {
                    return value.trim().length > 5 ? null : '密码不能小于6位';
                  },
                ),
                //登录按钮
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.all(15),
                          child: Text('登录'),
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            if ((_formKey.currentState as FormState)
                                .validate()) {
                              print('验证通过，提交数据');
                            }
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

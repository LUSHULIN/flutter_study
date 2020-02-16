import 'package:flutter/material.dart';

class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 50);

    return MaterialApp(
        title: 'StatelessWidget与基础组件',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('StatelessWidget与基础组件'),
          ),
          body: Container(
            decoration: BoxDecoration(color: Colors.white),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  'I am Text',
                  style: textStyle,
                ),
                Icon(
                  Icons.add_to_photos,
                  size: 50,
                  color: Colors.red,
                ),
                CloseButton(),
                BackButton(),
                Chip(
                  avatar: Icon(Icons.phone),
                  label: Text('chip'),
                  deleteIcon: Icon(Icons.delete_forever),
                ),
                Divider(
                  color: Colors.red,
                  height: 10, //容器的高度，不能改变线的高度
                  indent: 10, //左侧间距
                  endIndent: 10, //右侧间距
                ),
                Card(
                  color: Colors.blue,
                  elevation: 5, //设置阴影
                  margin: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text("i am card"),
                  ),
                ),
//                AlertDialog(
//                  title: Text("警告您"),
//                  content: Text('你这个糟老头子坏得很'),
//                  actions: <Widget>[Text('cancel'), Text('done')],
//                ),
                //漂浮按钮
                RaisedButton(
                  child: Text('normal'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('扁平按钮'),
                  onPressed: () {},
                ),
                OutlineButton(
                  child: Text("外边框按钮"),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {
                    print('图片按钮被点击了');
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text("Submit"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {},
                ),
                Image(image: AssetImage("images/avatar.png"), width: 100.0),
                Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581873917172&di=e59c8fa57165db71b0b23e22eac9e2b3&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fitbbs%2F1010%2F26%2Fc2%2F5649631_1288091130320_1024x1024it.jpg",
                  width: 100,
                  height: 100,
                )
              ],
            ),
          ),
        ));
  }
}

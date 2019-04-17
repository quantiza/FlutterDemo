import 'package:flutter/material.dart';
import 'animation/scale.dart';
import 'widget/turnbox.dart';
import 'package:flutter_demo/views/communication.dart';
import 'package:flutter_demo/views/wechat.dart';

import 'package:fluwx/fluwx.dart' as fluwx;

void main() {
  runApp(MyApp());
}

Map<String, WidgetBuilder> routes = {
  'turn_box': (context) => TurnBoxRoute(),
  'communication': (context) => CommunicationDemo(),
  'wechat': (context) => WechatDemo(),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(routes.keys.toList()[index]),
            onTap: () => Navigator.pushNamed(context, routes.keys.toList()[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: routes.length,
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'animation/scale.dart';
import 'widget/turnbox.dart';
import 'package:flutter_demo/views/communication.dart';
import 'package:flutter_demo/views/wechat.dart';
import 'package:flutter_demo/views/context_widget_state.dart';
import 'package:fluwx/fluwx.dart' as fluwx;
import 'views/widget_text.dart';
import 'views/widget_container.dart';
import 'views/custom_paint_demo.dart';
import 'dart:math';
import 'dart:async';
import 'views/state_manage.dart';
import 'views/Inherit_demo.dart';

//List<Offset> generateTreePoints() {
//  var x0 = 1.0;
//  var y0 = 1.0;
//
//  var x1 = 0.0, y1 = 0.0;
//
//  var result = <Offset>[];
//
//  var ifsMatrix = [
//    [0.195, -0.488, 0.344, 0.433, 0.4431, 0.2452, 0.25],
//    [0.462, 0.414, -0.252, 0.361, 0.2511, 0.5692, 0.25],
//    [-0.058, -0.07, 0.453, -0.111, 0.5976, 0.0969, 0.25],
//    [-0.035, 0.07, -0.469, -0.022, 0.4884, 0.5069, 0.2],
//    [-0.637, 0, 0, 0.501, 0.8562, 0.2513, 0.05],
//  ];
//  var random = Random();
//
//  result = List.generate(200, (index) => index).map<Offset>((item) {
//    if (random.nextDouble() <= 0.25) {
//      x1=ifsMatrix[2][1]*x0 + ifsMatrix[2][2]*y0 + ifsMatrix[2][5];
//      y1=ifsMatrix[2][3]*x0+ifsMatrix[2][4]*y0+ifsMatrix[2][6];
//    } else if (random.nextDouble() <= 0.5) {
//      x1=ifsMatrix[2][1]*x0+ifsMatrix[2][2]*y0+ifsMatrix[2][5];
//      y1=ifsMatrix[2][3]*x0+ifsMatrix[2][4]*y0+ifsMatrix[2][6];
//    } else if (random.nextDouble() <= 0.75) {
//      x1=ifsMatrix[3][1]*x0+ifsMatrix[3][2]*y0+ifsMatrix[3][5];
//      y1=ifsMatrix[3][3]*x0+ifsMatrix[3][4]*y0+ifsMatrix[3][6];
//    } else if (random.nextDouble() <= 0.95) {
//      x1=ifsMatrix[4][1]*x0+ifsMatrix[4][2]*y0+ifsMatrix[4][5];
//      y1=ifsMatrix[4][3]*x0+ifsMatrix[4][4]*y0+ifsMatrix[4][6];
//    } else {
//      x1=ifsMatrix[5][1]*x0+ifsMatrix[5][2]*y0+ifsMatrix[5][5];
//      y1=ifsMatrix[5][3]*x0+ifsMatrix[5][4]*y0+ifsMatrix[5][6];
//    }
//    x0 = x1;
//    y0 = y1;
//
//    return Offset(x1*100, y1*100);
//  }).toList();
//
//  return result;
//}

void main() {
//  var points = generateTreePoints();
  runApp(MyApp());
}


Map<String, WidgetBuilder> routes = {
  'turn_box': (context) => TurnBoxRoute(),
  'communication': (context) => CommunicationDemo(),
  'wechat': (context) => WechatDemo(),
  'context_widget_state': (context) => ContextStateWidget(),
  'widget_text': (context) => WidgetText(),
  'widget_container': (context) => WidgetContainer(),
  'custom_paint': (context) => CustomPaintDemo(),
  'state_manage': (context) => StateManage(),
  'inherit_manage': (context) => InheritDemo(),
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

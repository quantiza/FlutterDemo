import 'package:flutter/material.dart';
import 'dart:convert';

class WidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Widget Container'),
      ),
      body: Container(
        color: Colors.red,
        child: Opacity(opacity: null),
      ),
//      body: Container(
//        padding: EdgeInsets.all(50),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Container(
//              height: 100,
//              width: 100,
//              color: Colors.lightGreenAccent,
//              child: Text('HELLO'),
//              constraints: BoxConstraints.tightFor(
//                width: 200,
//                height: 100,
//              ),
//            ),
//            Container(
//              padding: EdgeInsets.all(20),
////              height: 100,
////              width: 100,
//              color: Colors.grey,
////              child: Text('HELLO'),
//            ),
//            Container(
//              margin: EdgeInsets.all(20),
//              height: 100,
//              width: 100,
//              color: Colors.yellow,
//            ),
//            Container(
//              height: 150,
//              width: 150,
//              child: Text('HELLO'),
//              transform: Matrix4.rotationZ(-.5),
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                image: DecorationImage(image: NetworkImage('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png')),
//                border: BorderDirectional(
//                    top: BorderSide(
//                  color: Colors.red,
//                  width: 11.0,
//                  style: BorderStyle.solid,
//                )),
//                borderRadius: BorderRadius.all(Radius.circular(10)),
//              ),
//            ),
//          ],
//        ),
//      ),
    );
  }
}

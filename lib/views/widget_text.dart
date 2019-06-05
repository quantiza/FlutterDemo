import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Widget Text'),
      ),
      body: Column(
        children: <Widget>[
//          Container(
//            margin: EdgeInsets.all(20),
//            width: 200,
//            color: Colors.yellow,
//            child: Text(
//              'This is a DEMO!',
//              style: TextStyle(fontSize: 20, color: Colors.red),
//            ),
//          ),
//          Container(
//            margin: EdgeInsets.all(20),
//            width: 200,
//            color: Colors.yellow,
//            child: Text(
//              'This is a DEMO!',
//              style: TextStyle(fontSize: 20, color: Colors.red),
//              textAlign: TextAlign.center,
//            ),
//          ),
//          Container(
//            margin: EdgeInsets.all(20),
//            width: 200,
//            color: Colors.yellow,
//            child: Text(
//              'This is a DEMO!',
//              style: TextStyle(fontSize: 20, color: Colors.red),
//              textScaleFactor: 1.5,
//            ),
//          ),
//          Container(
//            margin: EdgeInsets.all(20),
//            width: 200,
//            color: Colors.yellow,
//            child: Text(
//              'This is a DEMO!',
//              style: TextStyle(fontSize: 20, color: Colors.red),
//              maxLines: 1,
//              textScaleFactor: 1.5,
//            ),
//          ),
//          Container(
//            margin: EdgeInsets.all(20),
//            width: 200,
//            color: Colors.yellow,
//            child: Text(
//              'This is a DEMO!',
//              style: TextStyle(fontSize: 20, color: Colors.red),
//              maxLines: 1,
//              overflow: TextOverflow.ellipsis,
//              textScaleFactor: 1.5,
//            ),
//          ),
//          Container(
//            margin: EdgeInsets.all(20),
//            width: 200,
//            color: Colors.yellow,
//            child: Text(
//              'This is a DEMO!',
//              style: TextStyle(fontSize: 20, color: Colors.red),
//              maxLines: 1,
//              softWrap: false,
//              textScaleFactor: 1.5,
//            ),
//          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 200,
            color: Colors.yellow,
            child: Text(
              'This is a DEMO!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 200,
            color: Colors.yellow,
            child: Text(
              'This is a DEMO!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                backgroundColor: Colors.black,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 200,
            color: Colors.yellow,
            child: Text(
              'This is a DEMO!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                backgroundColor: Colors.black,
                letterSpacing: 2,
                wordSpacing: 4,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 200,
            color: Colors.yellow,
            child: Text(
              'This is a DEMO!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                shadows: [
                  Shadow(
                    color: Colors.green,
                    offset: Offset(5, 5),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 200,
            color: Colors.yellow,
            child: Text(
              'This is a DEMO!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                decoration: TextDecoration.combine([
                  TextDecoration.lineThrough,
                  TextDecoration.underline,
                ]),
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

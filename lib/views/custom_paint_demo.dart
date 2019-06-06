import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class CustomPaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    generateTreePoints();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Custom Paint Demo'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(200, 200),
          painter: MyPainter(),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..color = Colors.red;
    canvas.drawRect(Offset.zero & size, paint);


//    canvas.drawPoints(PointMode.points, points, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



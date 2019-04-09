import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  @override
  _ScaleAnimationState createState() => new _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> with SingleTickerProviderStateMixin {
  
  Animation<double> animation;
  AnimationController controller;
  
  @override
  void initState() {
    super.initState();
    controller = new AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    controller.forward();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        color: Colors.grey,
        height: animation.value,
        width: animation.value,
        child: Text('hello'),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}
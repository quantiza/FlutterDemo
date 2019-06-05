import 'package:flutter/material.dart';

class ContextStateWidget extends StatefulWidget {

  ContextStateWidget({
    Key key,
    this.size = 30,
    this.count = 0,
  }) : super(key: key);

  final double size;
  int count;

  @override
  _ContextStateWidgetState createState() => new _ContextStateWidgetState();
}

class _ContextStateWidgetState extends State<ContextStateWidget> {
  GlobalKey<_CounterState> _globalKey = GlobalKey<_CounterState>();
  GlobalKey<ScaffoldState> _globalKey2 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _globalKey2,
      appBar: AppBar(title: Text('context_state_widget'),),
      body: Counter(key: _globalKey,),
      floatingActionButton: FloatingActionButton(
        child: Text('press'),
        onPressed: () {
          _globalKey2.currentState.showSnackBar(SnackBar(content: Text('hello')));
          print(_globalKey);
          print(_globalKey.currentWidget);
          print(_globalKey.currentContext);
          print(_globalKey.currentState);
        },
      ),
    );
  }
}



class Counter extends StatefulWidget {

  Counter({
    Key key,
    this.size = 30,
    this.count = 0,
  }) : super(key: key);

  final double size;
  int count;

  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {

  int amount = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Container(
            width: widget.size,
            height: widget.size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[500],),
            ),
            child: Text('-'),
          ),
          onTap: _decrease,
        ),
        Container(
          width: widget.size,
          height: widget.size,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[500],),
          ),
          child: Text(amount.toString()),
        ),

        GestureDetector(
          child: Container(
            width: widget.size,
            height: widget.size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[500],),
            ),
            child: Text('+'),
          ),
          onTap: _increase,
        ),
      ],
    );
  }

  void _increase() {
    setState(() {
      amount ++;
    });
  }

  void _decrease() {
    if (widget.count > 0) {
      setState(() {
        amount --;
      });
    } else {
      print('------------ error');
    }
  }
}
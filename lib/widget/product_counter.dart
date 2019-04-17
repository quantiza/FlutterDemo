import 'package:flutter/material.dart';

class ProductCounter extends StatefulWidget {

  ProductCounter({
    Key key,
    this.size = 30,
    this.count = 0,
    this.callback,
  }) : super(key: key);

  final double size;
  int count;
  var callback;

  @override
  _ProductCounterState createState() => new _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {

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
    widget.callback(1);
  }

  void _decrease() {
    if (widget.count > 0) {
      setState(() {
        amount --;
      });
      widget.callback(-1);

    } else {
      print('------------ error');
    }
  }
}
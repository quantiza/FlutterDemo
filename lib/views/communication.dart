import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/child_two.dart';
import 'package:flutter_demo/events/child2_event.dart';

class CommunicationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Communication'),
      ),
      body: Parent(),
    );
  }
}

class Parent extends StatefulWidget {
  @override
  _ParentState createState() {
    // TODO: implement createState
    return new _ParentState();
  }
}

class _ParentState extends State<Parent> {

  String data = '无';
  String data4Two = '这是传给组件2的值';

  void onDataChange(val) {
    setState(() {
      data = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new ChildOne(),
          new ChildTwo(data4Two: data4Two, callback: (val) => onDataChange(val)),
          new Container(
            width: 400.0,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.only(top:30.0, bottom: 50.0),
            decoration: BoxDecoration(
                color: Colors.blue[100]),
            child: new Column(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.only(bottom: 15.0),
                    child:  new Text('父组件'),
                  ),
                  new Text('子组件2, 传过来的值: ' + '$data'),
                ]
            ),
          )
        ],
      ),
    );
  }
}

class ChildOne extends StatefulWidget {
  @override
  _ChildOneState createState() => new _ChildOneState();
}

class _ChildOneState extends State<ChildOne> {
  String data = 'None';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventBus.on<Child2Event>().listen((event) => show(event.text));
  }

  void show(String val) {
    setState(() {
      data = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        decoration: BoxDecoration(color: Colors.blue[100]),
        child: new Center(
            child: new Column(
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(bottom: 15.0),
                  child:  new Text('子组件1'),
                ),
                new Text('子组件2传来的值:$data'),
              ]
            )
        )
    );
  }
}


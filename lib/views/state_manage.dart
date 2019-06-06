import 'package:flutter/material.dart';

class StateManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('State Manage'),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  BodyWidgetState createState() => new BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        child: Column(
          children: <Widget>[
            Text(
              counter.toString(),
              style: Theme.of(context).textTheme.display4,
            ),
            FlatButton(
              child: Icon(Icons.add, size: 40),
              onPressed: () {
                counter++;
                setState(() {});
              },
            ),
            FlatButton(
              child: Icon(Icons.navigate_next, size: 40),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => NextPage(this),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final BodyWidgetState preState;

  NextPage(this.preState);

  @override
  NextPageState createState() => new NextPageState();
}

class NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('next'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Column(
            children: <Widget>[
              Text(
                widget.preState.counter.toString(),
                style: Theme.of(context).textTheme.display4,
              ),
              FlatButton(
                child: Icon(Icons.add),
                onPressed: () {
                  widget.preState.counter++;
                  widget.preState.setState(() {});
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

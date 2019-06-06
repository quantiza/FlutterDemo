import 'package:flutter/material.dart';

class InheritDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Inherit Demo'),
      ),
      body: BodyWidget(),
    );
  }
}

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  final int data;

  static ShareDataWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ShareDataWidget);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
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
    return ShareDataWidget(
      data: counter,
      child: Center(
        child: Container(
          height: 400,
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
              InheritTest(),
              FlatButton(
                child: Icon(Icons.navigate_next, size: 40),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context) => NextPage(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InheritTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      ShareDataWidget.of(context).data.toString(),
      style: Theme.of(context).textTheme.display4,
    );
  }
}

class NextPage extends StatefulWidget {

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
                'hello',
                style: Theme.of(context).textTheme.display4,
              ),
              FlatButton(
                child: Icon(Icons.add),
                onPressed: () {
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

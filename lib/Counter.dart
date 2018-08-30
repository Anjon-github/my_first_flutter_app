import 'package:flutter/material.dart';

class Counter extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new _CounterState();
  }

}

class _CounterState extends State<Counter>{

  int _counter = 0;

  void _increment(){
//    _counter++;
//    print("counter = $_counter");
    setState((){
      _counter++;
      print("counter = $_counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Increment'),
        ),
        new Text('Count: $_counter')
      ],
    );
  }

}
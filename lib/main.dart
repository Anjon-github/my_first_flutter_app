import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/MyHomePage.dart';
import 'package:my_first_flutter_app/com/hexin/plat/kaihu/image/ShowImage.dart';
import 'TutorialHome.dart';
import 'RandomWords.dart';
import 'MyApp.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Flutter Tutorial',
////  home: new TutorialHome(),
//  home: new RandomWords(),
//));

//void main() => runApp(new ShowImage());

//void main() => runApp(new MyApp());

//void main() => runApp(new MyHomePage(title: "苏州",));

//void main() => runApp(new RandomWords());

void main() {
  runApp(new MaterialApp(
    title: "",
    home: new RandomWords(),
  ));
}

class MyAppBar extends StatelessWidget{

  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation munu',
            onPressed: null,
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null
          ),
        ],
      ),
    );
  }

}

import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var title = "Web Images";

    return new MaterialApp(
        title: title,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),

          body: new LayoutBuilder(
            builder: (BuildContext context,
                BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: new ConstrainedBox(
                  constraints: new BoxConstraints(
                      minHeight: viewportConstraints.maxHeight
                  ),
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.all(8.0),
                        child: new Image.network(
                            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535532035504&di=470d401ade87ff5b820747811e333bbd&imgtype=0&src=http%3A%2F%2Ff.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fe824b899a9014c08bbd92197077b02087bf4f426.jpg"),
                      ),

                      new Container(
                          margin: const EdgeInsets.all(8.0),
                          child: new Image.network(
                              "http://2017.zcool.com.cn/community/037b7355775cafb0000018c1b222864.gif"),
                      ),

                      new Container(
                          margin: const EdgeInsets.all(8.0),
                          child: new Image.network(
                              "http://img5.duitang.com/uploads/item/201412/13/20141213142127_yXadz.thumb.700_0.gif"),
                      ),

                      new Container(
                          margin: const EdgeInsets.all(8.0),
                          child: new Image.network(
                              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535524834113&di=3af6f6e948c452d8026481db025f9351&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fadaf2edda3cc7cd90df1ede83401213fb80e9127.jpg"),
                      ),

                    ],
                  ),
                ),
              );
            },
          ),
        )

    );
  }

}
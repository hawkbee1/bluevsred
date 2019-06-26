import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  debugPrintGestureArenaDiagnostics = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: DraggableWidget(offset: Offset(100.0,100.0),),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}

class DraggableWidget extends StatefulWidget {
  Offset offset;

  DraggableWidget({Key key, this.offset}) : super(key: key);
  @override
  _StateDraggableWidget createState() => _StateDraggableWidget();
}

class _StateDraggableWidget extends State<DraggableWidget> {
  double height = 100.0;
  double width = 100.0;
  double zoom = 1.0;
  double previousZoom;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.offset = Offset(0.0,0.0);
    zoom = 1.0;
    previousZoom = null;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                child: Icon(Icons.zoom_in),
                onPressed: () {
                  setState(() {
                    if(zoom < 1.8) zoom = zoom+0.1;
                  });
                },
              ),
              RaisedButton(
                child: Icon(Icons.zoom_out),
                onPressed: () {
                  setState(() {
                    if(zoom>0.2) zoom = zoom-0.1;
                  });
                },
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            height: 400.0,
            child: Transform.scale(
              scale: zoom,
              child: Draggable(
                feedback: Container(
                  child: Center(child:Text('feedback')),
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(color: Colors.red),
                ),
                onDraggableCanceled: (v,o) {
                  setState(() {
                    RenderBox renderBox = context.findRenderObject();
                    widget.offset = renderBox.globalToLocal(o);
                  });
                },
                child: Stack(

                  children: <Widget>[
                    Positioned(
                      bottom: 100.0,
                      right: 100.0,
                      child: Container(
                        child: Center(child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('x: ${widget.offset.dx.floor()} y: ${widget.offset.dy.floor()} nbColumns: $zoom'),
                        )),
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                    ),
                    Positioned(
                    top: widget.offset.dy,
                    left: widget.offset.dx,
                    child: Container(
                      child: Center(child:Text('draggable')),
                      height: 120.0,
                        width: 120.0,
                      decoration: BoxDecoration(color: Colors.green),
                    ),
                  ),
                    Positioned(
                      top: widget.offset.dy+100.0,
                      left: widget.offset.dx+100.0,
                      child: Container(
                        child: Center(child:Text('Tile2')),
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(color: Colors.green),
                      ),
                    )                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


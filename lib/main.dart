import 'package:bluevsred/zoomMap.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
//  debugPrintGestureArenaDiagnostics = true;
//  debugPaintPointersEnabled = true;
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

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: ZoomMap(
          position: Offset(0.0, 0.0),
          child: TempMap(),
        ),
      ),
    );
  }
}

class StFulTempMap extends StatefulWidget {
  @override
  _StFulTempMapState createState() => _StFulTempMapState();
}

class _StFulTempMapState extends State<StFulTempMap> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.pinkAccent,
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Text('In Flutter we believe !'),
        ),
      ),
    );
  }
}


class TempMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.lime,
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Text('In Flutter we believe !'),
        ),
      ),
    );
  }
}

class Map extends StatelessWidget {
  Map(this._position);
  final Offset _position;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amberAccent,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 100.0,
              right: 100.0,
              child: Container(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'x: ${_position.dx.floor()} y: ${_position.dy.floor()}'),
                )),
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            Positioned(
              top: _position.dy,
              left: _position.dx,
              child: Container(
                child: Center(child: Text('draggable')),
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
            Positioned(
              top: _position.dy + 100.0,
              left: _position.dx + 100.0,
              child: Container(
                child: Center(child: Text('Tile2')),
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}

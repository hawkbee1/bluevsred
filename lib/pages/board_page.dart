import 'package:bluevsred/board.dart';
import 'package:bluevsred/key_strings.dart';
import 'package:bluevsred/mapGestureDetector.dart';
import 'package:flutter/material.dart';

class BoardPage extends StatelessWidget {
// TODO:  static FirebaseInAppMessaging fiam = FirebaseInAppMessaging();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Board'),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: MapGestureDetector(
          key: Key(MAP_GESTURE_DETECTOR),
          position: Offset(0.0, 0.0),
          child: Board(offset: Offset(0.0, 0.0)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alert),
        onPressed: () {
//          fiam.triggerEvent('48242172180299776');
        },
      ),
    );
  }
}

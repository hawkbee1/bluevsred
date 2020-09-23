import 'package:bluevsred/core/routes.dart';
import 'package:bluevsred/key_strings.dart';
import 'package:bluevsred/board.dart';
import 'package:bluevsred/mapGestureDetector.dart';
import 'package:bluevsred/pages/login_page.dart';
//import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
//  debugPrintGestureArenaDiagnostics = true;
//  debugPaintPointersEnabled = true;
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue versus Red',
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
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(),
      navigatorKey: Routes.sailor.navigatorKey, // important
      onGenerateRoute: Routes.sailor.generator(), // important
    );
  }
}

class MyHomePage extends StatelessWidget {
//  Mettre
//  static FirebaseInAppMessaging fiam = FirebaseInAppMessaging();
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

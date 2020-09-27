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

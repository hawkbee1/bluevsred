import 'package:bluevsred/core/injection_container.dart';
import 'package:bluevsred/core/routes.dart';
import 'package:bluevsred/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  Routes.createRoutes();
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue versus Red',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(),
      navigatorKey: Routes.sailor.navigatorKey,
      onGenerateRoute: Routes.sailor.generator(),
    );
  }
}

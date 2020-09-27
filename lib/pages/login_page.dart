import 'package:bluevsred/core/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              key: Key('loginTextField'),
              decoration: InputDecoration(hintText: 'Login'),
            ),
            TextField(
              key: Key('passwordTextField'),
              decoration: InputDecoration(hintText: 'Password'),
            ),
            RaisedButton(
              onPressed: () {
                Routes.sailor.navigate('/BoardPage');
              },
              child: Text('Login'),
            ),
            InkWell(
              onTap: () {
                Routes.sailor.navigate('/GdprLandingPage');
              },
              child: Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}

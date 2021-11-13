import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Blue vs Red'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextField(
              key: Key('loginTextField'),
              decoration: InputDecoration(hintText: 'Login'),
            ),
            const TextField(
              key: Key('passwordTextField'),
              decoration: InputDecoration(hintText: 'Password'),
            ),
            ElevatedButton(
              key: const Key('LoginButton'),
              onPressed: () {
                // Routes.sailor.navigate('/BoardPage');
              },
              child: const Text('Login'),
            ),
            InkWell(
              onTap: () {
                // Routes.sailor.navigate('/GdprLandingPage');
              },
              child: const Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}

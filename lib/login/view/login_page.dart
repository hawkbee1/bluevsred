import 'package:bluevsred/l10n/l10n.dart';
import 'package:bluevsred/shared/app_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Blue vs Red'),
      ),
      body: Center(
        child: Column(
          children: [
            AppTextField(
              appTextFieldKey: const Key('loginTextField'),
              appTextFieldHintText: l10n.loginFieldText,
            ),
            AppTextField(
              appTextFieldKey: const Key('passwordTextField'),
              appTextFieldHintText: l10n.passwordFieldText,
            ),
            ElevatedButton(
              key: const Key('LoginButton'),
              onPressed: () {
                // Routes.sailor.navigate('/BoardPage');
              },
              child: Text(l10n.loginButtonText),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  // Routes.sailor.navigate('/GdprLandingPage');
                },
                child: Text(l10n.signUpButtonText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
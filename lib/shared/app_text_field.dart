import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required Key appTextFieldKey,
    required String appTextFieldHintText,
  })  : _appTextFieldKey = appTextFieldKey,
        _appTextFieldHintText = appTextFieldHintText,
        super(key: key);

  final Key _appTextFieldKey;
  final String _appTextFieldHintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        key: _appTextFieldKey,
        decoration: InputDecoration(hintText: _appTextFieldHintText),
      ),
    );
  }
}

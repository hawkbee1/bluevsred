import 'package:bluevsred/shared/app_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppTextField', () {
    testWidgets('key and Hint text are displayed', (tester) async {
      const appTextFieldKey = Key('test');
      const appTextFieldHintText = 'Hint text';
      await tester.pumpWidget(
        const AppTextField(
          appTextFieldKey: appTextFieldKey,
          appTextFieldHintText: appTextFieldHintText,
        ),
      );
      expect(find.byKey(appTextFieldKey), findsOneWidget);
      expect(find.byType(AppTextField), findsOneWidget);
      expect(find.text(appTextFieldHintText), findsOneWidget);
      expect(find.bySemanticsLabel(appTextFieldHintText), findsOneWidget);
    });
  });
}

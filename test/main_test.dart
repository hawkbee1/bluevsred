import 'package:bluevsred/key_strings.dart';
import 'package:bluevsred/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Home Page is displaying', () {
    testWidgets('Home Page is displaying', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text(APPLICATION_TITLE), findsOneWidget);
      expect(find.byKey(Key(MAP_GESTURE_DETECTOR)), findsOneWidget);
    });
  });
}

import 'package:bluevsred/key_strings.dart';
import 'package:bluevsred/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Board is displaying', () {
    testWidgets('Board is displaying', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.byKey(Key(BOARD_STACK)), findsOneWidget);

    });
  });
}
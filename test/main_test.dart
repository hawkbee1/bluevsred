import 'dart:math';

import 'package:bluevsred/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Home Page is displaying', () {
    testWidgets('Home Page is displaying', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text('Flutter Demo Home Page'), findsOneWidget);
      expect(find.byKey(Key('MapGestureDetector')), findsOneWidget);
    });
  });
}
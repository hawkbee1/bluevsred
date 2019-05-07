// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bluevsred/main.dart';

void main() {
  testWidgets('draggable widget is working fine', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

//    verify a draggable widget exist
    expect(find.byType(Draggable), findsOneWidget);

    final Offset firstLocation = tester.getCenter(find.byType(Draggable));
    final TestGesture gesture = await tester.startGesture(firstLocation, pointer: 7);
    await tester.pump();

    expect(find.text('feedback'), findsOneWidget);
    expect(find.text('draggable'), findsOneWidget);

    final Offset secondLocation = tester.getCenter(find.byType(Scaffold));
    await gesture.moveTo(secondLocation);
    await tester.pump();

    expect(find.text('feedback'), findsOneWidget);
    expect(find.text('draggable'), findsOneWidget);

    await gesture.up();
    await tester.pump();

    expect(find.text('feedback'), findsNothing);
    expect(find.text('draggable'), findsOneWidget);

  });
}

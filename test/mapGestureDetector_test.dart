// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bluevsred/key_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bluevsred/main.dart';

void main() {
  testWidgets('Dragging is OK', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

//    verify a draggable widget exist
    expect(find.byKey(Key(GESTURE_DETECTOR)), findsOneWidget);
    final Offset firstLocation = tester.getCenter(find.byKey(Key(GESTURE_DETECTOR)));
    print('${firstLocation.dx} ${firstLocation.dy}');
    final TestGesture gesture = await tester.createGesture();
    await gesture.down(firstLocation);
    final Offset moveOffset = Offset(10.0,0.0);
    await gesture.moveBy(moveOffset, timeStamp: Duration(seconds: 1));
    await gesture.moveBy(moveOffset, timeStamp: Duration(seconds: 1));
    await gesture.moveBy(moveOffset, timeStamp: Duration(seconds: 1));
//    await gesture.moveBy(moveOffset);
    final Offset secondLocation = tester.getCenter(find.byKey(Key(GESTURE_DETECTOR)));
    expect(secondLocation, Offset(firstLocation.dx + moveOffset.dx, firstLocation.dy + moveOffset.dy));
    await gesture.up();
    expect(find.byKey(Key(GESTURE_DETECTOR)), findsOneWidget);
    print('${secondLocation.dx} ${secondLocation.dy}');
    expect(secondLocation, Offset(firstLocation.dx + moveOffset.dx, firstLocation.dy + moveOffset.dy));
  });

//  _handleScaleStart

//  _handleScaleUpdate

//  _handleScaleReset


//  testWidgets('draggable widget is working fine', (WidgetTester tester) async {
//
//    final Offset firstDraggableLocation = tester.getTopLeft(find.text('draggable'));
//
//    print('first draggable location');
//    print(firstDraggableLocation.dx);
//    print(firstDraggableLocation.dy);
//
//    expect(find.text('feedback'), findsNothing);
//    expect(find.text('draggable'), findsOneWidget);
//
//    expect(find.text('feedback'), findsOneWidget);
//    expect(find.text('draggable'), findsOneWidget);
//
//    await gesture.up();
//    await tester.pump();
//    final Offset finalLocation = tester.getTopLeft(find.text('draggable'));
//    print('finallocation');
//    print(finalLocation.dx);
//    print(finalLocation.dy);
//
//    expect(find.text('feedback'), findsNothing);
//    expect(find.text('draggable'), findsOneWidget);
//
//    final Offset movedOffest = Offset(finalLocation.dx-firstDraggableLocation.dx, finalLocation.dy-firstDraggableLocation.dy);
//    expect(movedOffest, moveOffset);
//
//  });

//  testWidgets('zoom widget is working fine', (WidgetTester tester) async {
//    // Build our app and trigger a frame.
//    await tester.pumpWidget(MyApp());
//
////    verify a gestureDetector widget exist
//    expect(find.byKey(Key('zoom')), findsOneWidget);
//
//  });

  }

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
    final Offset firstLocation =
        tester.getCenter(find.byKey(Key(GESTURE_DETECTOR)));
    print('${firstLocation.dx} ${firstLocation.dy}');
    TestGesture gesture = await tester.startGesture(firstLocation, pointer: 7);
//    await gesture.down(firstLocation);
    final Offset moveOffset = Offset(0.0, 10.0);
    await gesture.moveBy(moveOffset, timeStamp: Duration(seconds: 1));
    await tester.pump(Duration(seconds: 2));
    await gesture.up();
    await tester.pumpAndSettle();
    final Offset secondLocation =
        tester.getCenter(find.byKey(Key(GESTURE_DETECTOR)));
    expect(
        secondLocation,
        Offset((firstLocation.dx + moveOffset.dx),
            (firstLocation.dy + moveOffset.dy)));
//    await gesture.up();
    expect(find.byKey(Key(GESTURE_DETECTOR)), findsOneWidget);
    print('${secondLocation.dx} ${secondLocation.dy}');
    expect(
        secondLocation,
        Offset(firstLocation.dx + moveOffset.dx,
            firstLocation.dy + moveOffset.dy));

    print('test end point');
  });
}

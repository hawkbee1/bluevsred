import 'package:bluevsred/map/view/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockingjay/mockingjay.dart';
import '../../helpers/helpers.dart';

void main() {
  group('mapPage', () {
    late MockNavigator navigator;
    setUp(() {
      navigator = MockNavigator();
      when(() => navigator.push(any())).thenAnswer((_) async {});
    });

    testWidgets('routes to Units page when swiping from right border to left',
        (tester) async {
      await tester.pumpApp(
        MockNavigatorProvider(
          navigator: navigator,
          child: const MapPage(),
        ),
      );
      final bottomRight = tester.getBottomRight(find.byType(MapPage));
      await tester.dragFrom(
        Offset(bottomRight.dx, bottomRight.dy / 2),
        const Offset(-100, 0),
      );
      verify(() => navigator.push(any())).called(1);
    });
  });
}

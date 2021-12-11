import 'package:bluevsred/app/app.dart' as app;
import 'package:bluevsred/map/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('DeviceBuilder - launch app - override devices', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(
        devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
        ],
      )
      ..addScenario(
        widget: const app.App(),
        name: 'Login page',
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'launch_app');
  });

  testGoldens('Login to app', (tester) async {
    final builder = DeviceBuilder()
      // ignore: require_trailing_commas
      ..overrideDevicesForAllScenarios(
        devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
        ],
      )
      ..addScenario(
        widget: const app.App(),
        name: 'When launching app the the login page is shown',
      )
      ..addScenario(
        widget: const app.App(),
        name: 'Login button and helper',
        onCreate: (scenarioWidgetKey) async {
          final buttonFinder = find.descendant(
            of: find.byKey(scenarioWidgetKey),
            matching: find.byKey(
              const Key('LoginButton'),
            ),
          );
          final mapPageFinder = find.descendant(
            of: find.byKey(scenarioWidgetKey),
            matching: find.byType(MapPage),
          );
          expect(buttonFinder, findsOneWidget);
          await tester.tap(buttonFinder);
          await tester.pumpAndSettle();
          expect(buttonFinder, findsNothing);
          expect(mapPageFinder, findsOneWidget);
        },
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'login_to_app');
  });
}

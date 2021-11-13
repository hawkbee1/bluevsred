import 'package:bluevsred/app/app.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('DeviceBuilder - launch app - override devices',
      (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletPortrait,
        Device.tabletLandscape,
      ])
      ..addScenario(
        widget: const app.App(),
        name: 'Login page',
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(
        tester, 'launch_app');
  });

  testGoldens('Login to app',
      (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletPortrait,
        Device.tabletLandscape,
      ])
      ..addScenario(
        widget: const app.App(),
        name: 'default page',
      )
      ..addScenario(
        widget: const app.App(),
        name: 'Login button and helper',
        onCreate: (scenarioWidgetKey) async {
          final finder = find.descendant(
              of: find.byKey(scenarioWidgetKey),
              matching: find.byKey(const Key('LoginButton')));
          expect(finder, findsOneWidget);
          await tester.tap(finder);
        },
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'login_to_app');
  });
}

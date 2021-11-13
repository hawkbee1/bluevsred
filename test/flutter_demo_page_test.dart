import 'package:bluevsred/app/app.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('DeviceBuilder - one scenario - default devices', (tester) async {
    final builder = DeviceBuilder()
      ..addScenario(
        widget: const app.App(),
        name: 'default page',
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'flutter_demo_page_single_scenario');
  });

  testGoldens('DeviceBuilder - one scenario - override devices',
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
        tester, 'flutter_demo_page_single_scenario_more_devices');
  });

  testGoldens('DeviceBuilder - multiple scenarios - with onCreate',
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

    await screenMatchesGolden(tester, 'flutter_demo_page_multiple_scenarios');
  });
}

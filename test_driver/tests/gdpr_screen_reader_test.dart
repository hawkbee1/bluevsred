import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  final config = Config();
  FlutterDriver driver;
  group('Tests GDPR', () {
    setUpAll(
      () async {
        driver = await FlutterDriver.connect();
        driver.setSemantics(true);
      },
    );
    final signUpButtonFinder = find.text('Sign Up');
    final manageGdprSettingsButtonFinder = find.text('SETTINGS');
    final manageAnalyticsSwitchFinder = find.byValueKey('AnalyticsSwitch');
    final manageAdvertisingSwitchFinder = find.byValueKey('AdvertisingSwitch');
    final acceptGdprSettingsButtonFinder = find.text('ACCEPT');

    /// Example of semantic label finder and it usage
    /// test('validate image accessibility', () async {
    ///     final imageLabel = find.bySemanticsLabel('Company logo');
    ///     int id = await driver.getSemanticsId(imageLabel);
    ///     print(id);
    ///     expect(await driver.getSemanticsId(imageLabel), isNotNull);
    ///     await driver.tap(imageLabel);
    ///     print('tapped on image');
    ///   });
    /// });
    test('All the GDPR process on sign up which end by displaying the Board',
        () async {
      await screenshot(driver, config, 'gdpr_test_homePage');
      await driver.tap(signUpButtonFinder);
      await screenshot(driver, config, 'gdpr_test_gdprLandingPage');
      await driver.tap(manageGdprSettingsButtonFinder);
      await screenshot(driver, config, 'gdpr_test_gdprSettingsPage');
      await driver.tap(manageAnalyticsSwitchFinder);
      await screenshot(driver, config, 'gdpr_test_gdprAnalytics_false');
      await driver.tap(manageAdvertisingSwitchFinder);
      await screenshot(driver, config, 'gdpr_test_gdprAdvertising_false');
      await driver.tap(manageAnalyticsSwitchFinder);
      await screenshot(driver, config, 'gdpr_test_gdprAnalytics_true');
      await driver.tap(acceptGdprSettingsButtonFinder);
      await screenshot(driver, config, 'gdpr_test_gdprBoardPage');
    });
    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });
  });
}

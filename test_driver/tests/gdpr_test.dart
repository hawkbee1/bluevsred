import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'library/helpers.dart';

void main() {
  FlutterDriver driver;
  group('Tests GDPR', () {
    setUpAll(
      () async {
        driver = await FlutterDriver.connect();

        /// Make certain images from old tests are deleted
        deleteFolderFiles('test_driver/tests/library/tmp_test_image');
        deleteFolderFiles('test_driver/tests/library/tmp_test_difference');
      },
    );
    final signUpButtonFinder = find.text('Sign Up');
    final manageGdprSettingsButtonFinder = find.text('SETTINGS');
    final manageAnalyticsSwitchFinder = find.byValueKey('AnalyticsSwitch');
    final manageAdvertisingSwitchFinder = find.byValueKey('AdvertisingSwitch');
    final acceptGdprSettingsButtonFinder = find.text('ACCEPT');
    test('All the GDPR process on sign up which end by displaying the Board',
        () async {
      takeScreenshot(driver, 'gdpr_test_homePage');
      await driver.tap(signUpButtonFinder);
      takeScreenshot(driver, 'gdpr_test_gdprLandingPage');
      await driver.tap(manageGdprSettingsButtonFinder);
      takeScreenshot(driver, 'gdpr_test_gdprSettingsPage');
      await driver.tap(manageAnalyticsSwitchFinder);
      takeScreenshot(driver, 'gdpr_test_gdprAnalytics_false');
      await driver.tap(manageAdvertisingSwitchFinder);
      takeScreenshot(driver, 'gdpr_test_gdprAdvertising_false');
      await driver.tap(manageAnalyticsSwitchFinder);
      takeScreenshot(driver, 'gdpr_test_gdprAnalytics_true');
      await driver.tap(acceptGdprSettingsButtonFinder);
      takeScreenshot(driver, 'gdpr_test_gdprBoardPage');
    });
    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });
  });
}

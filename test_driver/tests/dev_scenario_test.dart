import 'dart:math';

import 'package:bluevsred/core/injection_container.dart';
import 'package:bluevsred/entities/game_layer.dart';
import 'package:bluevsred/entities/game_map.dart';
import 'package:bluevsred/testUnit.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'library/helpers.dart';

void main() {
  FlutterDriver driver;
  group('Dev Tests scenario', () {
    setUpAll(
      () async {
        driver = await FlutterDriver.connect();

        /// Make certain images from old tests are deleted
        deleteFolderFiles('test_driver/tests/library/tmp_test_image');
        deleteFolderFiles('test_driver/tests/library/tmp_test_difference');
        GameMap newGameMap = sl();
        newGameMap.mapSize = Point(100.0, 150.0);
        newGameMap.addGameLayer(
            position: Point(10.0, 10.0),
            layerType: LayerType.ground,
            layerDisplay: BasicGround());
        newGameMap.addGameLayer(
            position: Point(12.0, 10.0),
            layerType: LayerType.ground,
            layerDisplay: BasicGround());
        newGameMap.addGameLayer(
            position: Point(13.0, 10.0),
            layerType: LayerType.ground,
            layerDisplay: BasicGround());
        newGameMap.addGameLayer(
            position: Point(14.0, 14.0),
            layerType: LayerType.ground,
            layerDisplay: BasicGround());
        newGameMap.addGameLayer(
            position: Point(15.0, 15.0),
            layerType: LayerType.ground,
            layerDisplay: BasicGround());
        newGameMap.addGameLayer(
            position: Point(15.0, 16.0),
            layerType: LayerType.ground,
            layerDisplay: RiverGround());
        newGameMap.addGameLayer(
            position: Point(15.0, 17.0),
            layerType: LayerType.ground,
            layerDisplay: RiverGround());
        newGameMap.addGameLayer(
            position: Point(18.0, 18.0),
            layerType: LayerType.ground,
            layerDisplay: RiverGround());
        newGameMap.addGameLayer(
            position: Point(18.0, 19.0),
            layerType: LayerType.ground,
            layerDisplay: RiverGround());
        newGameMap.addGameLayer(
            position: Point(15.0, 16.0),
            layerType: LayerType.ground,
            layerDisplay: RiverGround());
        newGameMap.addGameLayer(
            position: Point(13.0, 10.0),
            layerType: LayerType.unit,
            layerDisplay: TestUnit());
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
      GameMap gameMap = sl();
      gameMap.addGameLayer(
          position: Point(50.0, 50.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround());
      gameMap.addGameLayer(
          position: Point(51.0, 50.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround());
      gameMap.addGameLayer(
          position: Point(50.0, 51.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround());
      gameMap.addGameLayer(
          position: Point(51.0, 51.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround());
    });
    takeScreenshot(driver, '_map_update_by_layer_addition');
    tearDownAll(() {
      // if (driver != null) {
      //   driver.close();
      // }
    });
  });
}

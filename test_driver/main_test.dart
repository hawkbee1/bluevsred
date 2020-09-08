import 'package:flutter_driver/flutter_driver.dart';
import 'package:screenshots/screenshots.dart';
import 'package:test/test.dart';

void main() {
  final config = Config();
  FlutterDriver driver;
  final textFinder = find.byValueKey('first-unit');
  group('Test GDPR', () {
    setUpAll(
      () async {
        driver = await FlutterDriver.connect();
      },
    );
    test('Tap the screen', () async {
//        await driver.tap(buttonFinder);
//        expect(await driver.getText(textFinder), "1");
      await screenshot(driver, config, 'testing');
    });
    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });
  });
}

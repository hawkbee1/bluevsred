import 'package:flutter_driver/flutter_driver.dart';
import 'package:screenshots/screenshots.dart';
import 'package:test/test.dart';

void main() {
  final config = Config();
  FlutterDriver driver;
  group('Test GDPR', () {
    setUpAll(
      () async {
        driver = await FlutterDriver.connect();
      },
    );
    final buttonFinder = find.text('Login');
    test('Tap the screen', () async {
      print(config.stagingDir);
      await driver.tap(buttonFinder);
      await screenshot(driver, config, 'testing');
    });
    tearDownAll(() {
      if (driver != null) {
        driver.close();
      }
    });
  });
}

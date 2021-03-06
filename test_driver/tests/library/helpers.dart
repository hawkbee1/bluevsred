import 'dart:io';

import 'package:diff_image/diff_image.dart';
import 'package:image/image.dart';
import 'package:flutter_driver/flutter_driver.dart';

// Delete all files in folder
void deleteFolderFiles(String path) {
  final dir = Directory(path);
  dir.deleteSync(recursive: true);
  Directory(path).createSync();
}

// take a screenshot from the driver, save it and compare it with golden test image
void takeScreenshot(FlutterDriver driver, String path) async {
  final List<int> pixels = await driver.screenshot();
  final File file = File('test_driver/tests/library/tmp_test_image/$path');
  await file.writeAsBytes(pixels);
  print(path);
  var firstImageFromMemory = decodeImage(
    File(
      'test_driver/tests/library/golden_tests/$path',
    ).readAsBytesSync(),
  );
  var secondImageFromMemory = decodeImage(
    File(
      'test_driver/tests/library/tmp_test_image/$path',
    ).readAsBytesSync(),
  );
  try {
    var diff = DiffImage.compareFromMemory(
      firstImageFromMemory,
      secondImageFromMemory,
    );
    print('The difference between images is: ${diff.diffValue} %');
    if (diff.diffValue != 0.0) {
      await File('test_driver/tests/library/tmp_test_difference/$path')
          .writeAsBytes(
        encodePng(diff.diffImg),
      );
    }
  } catch (e) {
    print(e);
  }
}

void compareImages(Image first, Image second) {}

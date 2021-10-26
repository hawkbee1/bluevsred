#!/usr/bin/env bash

cd ..
git pull
flutter clean
flutter pub get
flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/
flutter emulator --launch Pixel_4_API_29_with_google_play
flutter test --flavor development integration_test
flutter emulator --launch Pixel_4_API_29_with_google_play
flutter test --flavor development integration_test
flutter build appbundle --flavor development --target lib/main_development.dart
flutter build ios --flavor development --target lib/main_development.dart

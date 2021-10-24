#!/usr/bin/env bash

cd ..
flutter clean
flutter pub get
flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/
flutter build appbundle --flavor development --target lib/main_development.dart
cd android
bundle exec fastlane deploy --aab ../build/app/outputs/bundle/release/app-release.aab
cd ..
flutter build ios --flavor development --target lib/main_development.dart
cd ios
bundle exec fastlane beta
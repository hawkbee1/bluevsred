#!/usr/bin/env bash

cd ..
git pull
flutter clean
flutter pub get
flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/
flutter build appbundle --flavor development --target lib/main_development.dart
cd android
fastlane supply --aab /Users/romualdbarbe/Documents/bluevsred/build/app/outputs/bundle/developmentRelease/app-development-release.aab --track internal
bundle exec fastlane deploy
cd ..
flutter build ios --flavor development --target lib/main_development.dart
cd ios
bundle exec fastlane beta
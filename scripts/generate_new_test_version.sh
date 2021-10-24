#!/usr/bin/env bash

cd ..
flutter clean
flutter pub get
flutter test --coverage --test-randomize-ordering-seed random
flutter build appbundle
cd android
fastlane deploy
cd ..
flutter build ios
cd ios
fastlane beta
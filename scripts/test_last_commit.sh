#!/usr/bin/env bash

cd ..
flutter clean
flutter pub get
flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/
flutter build appbundle --flavor development --target lib/main_development.dart
flutter build ios --flavor development --target lib/main_development.dart

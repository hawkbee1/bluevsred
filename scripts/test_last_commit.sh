#!/usr/bin/env bash
#fvm flutter emulator --launch Pixel_4_API_31_arl64_M1
#fvm flutter emulator --launch apple_ios_simulator
cd ..
git pull
fvm flutter clean
fvm flutter pub get
fvm flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/

fvm flutter test --flavor development -d emulator-5554 integration_test

fvm flutter test --flavor development -d 78BBB2B3-6DB9-4A7F-9D41-9DBF6D5B077D integration_test
fvm flutter build appbundle --flavor development --target lib/main_development.dart
fvm flutter build ios --flavor development --target lib/main_development.dart

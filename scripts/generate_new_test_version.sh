#!/usr/bin/env bash

cd ..
#flutter clean
#flutter pub get
#flutter test --coverage --test-randomize-ordering-seed random
#genhtml coverage/lcov.info -o coverage/
#flutter build appbundle --flavor development --target lib/main_development.dart
cd android
fastlane supply --aab /Users/romualdbarbe/Documents/bluevsred/build/app/outputs/bundle/developmentRelease/app-development-release.aab --track internal --skip_upload_apk  true --skip_upload_metadata true
#skip_upload_changelogs          | false                                                            |
#| skip_upload_images              | false                                                            |
#| skip_upload_screenshots         | false
bundle exec fastlane deploy
cd ..
#flutter build ios --flavor development --target lib/main_development.dart
#cd ios
#bundle exec fastlane beta
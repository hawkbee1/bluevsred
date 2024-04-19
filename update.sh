cd bluevsred_shared
dart pub get
dart run build_runner build --delete-conflicting-outputs
cd ../bluevsred_server
dart pub get
serverpod generate
cd ../bluevsred_client
dart pub get
cd ../bluevsred_flutter
flutter pub get
dart run build_runner build --delete-conflicting-outputs
cd ../bluevsred_server
serverpod create-migration
dart bin/main.dart --apply-migrations

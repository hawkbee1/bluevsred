#sh

echo "lancement script"
flutter clean
flutter build appbundle
flutter clean
flutter build ios

cd android
fastlane test
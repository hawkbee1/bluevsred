#sh
# Close STDOUT file descriptor
exec 1<&-
# Close STDERR FD
exec 2<&-

# Open STDOUT as $LOG_FILE file for read and write.
exec 1<>logFile

# Redirect STDERR to STDOUT
exec 2>&1

echo "Adaptation of App Release Automator by @rodydavis"

action="$1"
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

git fetch
commitIdOrigin=$(git log --format="%H" -n 1 --remotes=origin)
commitIdLocal=$(git log --format="%H" -n 1)

if [ $commitIdOrigin != $commitIdLocal ]
then
   git pull
   echo "${green}Generating built files.. ${reset}"
    flutter packages pub run build_runner clean
    flutter packages pub run build_runner build --delete-conflicting-outputs

    pub global activate pubspec_version
#    git commit -a -m "Build $(pubver bump patch)"

    echo "${green}Building Project...${reset}"
    find . -name "*-e" -type f -delete
    flutter format .
    flutter clean

    echo "${green}Project Size: $(find . -name "*.dart" | xargs cat | wc -c)${reset}"

    echo "${green}Building appbundle...${reset}"
    flutter build apk

    echo "${green}Builing IPA..${reset}"
    cd ./ios && pod deintegrate && pod install && pod update
    fastlane test
    cd ..

    flutter build ios
    flutter drive --target=test_driver/main.dart -d emulator-5554
    flutter drive --target=test_driver/main.dart -d 0CAF54DC-CA9C-4AFB-85BA-6392DF3F0C80
    flutter test
    pwd

    cd android
    fastlane test
fi
echo "process finished"
#    git commit -a -m "Project Rebuilt"



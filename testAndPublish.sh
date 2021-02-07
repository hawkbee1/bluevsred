#sh

echo "Adaptation of App Release Automator by @rodydavis"

action="$1"
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

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
    flutter build appbundle

    echo "${green}Builing IPA..${reset}"
    cd ./ios && pod deintegrate && pod install && pod update && cd ..
    flutter build ios

#    git commit -a -m "Project Rebuilt"



cd android
fastlane test
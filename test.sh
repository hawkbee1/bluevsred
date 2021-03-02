#sh

echo "Adaptation of App Release Automator by @rodydavis"

#action="$1"
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
cd /Users/romualdbarbe/Documents/bluevsred

touch toto
pwd > toto
git fetch
commitIdOrigin=$(git log --format="%H" -n 1 --remotes=origin)
commitIdLocal=$(git log --format="%H" -n 1)

if [ $commitIdOrigin != $commitIdLocal ]
then
   git pull
   echo "${green}Preparing environment ${reset}"
   flutter clean
   flutter pub get
   flutter packages pub run build_runner clean
   echo "${green}Unit tests${reset}"
    flutter test
   echo "${green}Android driver tests${reset}"
    flutter drive --target=test_driver/main.dart -d emulator-5554
   echo "${green}Ios driver tests${reset}"
    flutter drive --target=test_driver/main.dart -d 0CAF54DC-CA9C-4AFB-85BA-6392DF3F0C80
    pwd
fi
echo "process finished"



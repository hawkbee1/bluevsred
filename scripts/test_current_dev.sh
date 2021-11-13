#!/usr/bin/env bash
#fvm flutter emulator --launch Pixel_4_API_31_arl64_M1
#fvm flutter emulator --launch apple_ios_simulator
cd ..

# desactivate basic tests since github actions are already taking care of it
fvm flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/

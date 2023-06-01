#!/usr/bin/env bash

printf "Scale 3C pub get\n"
flutter clean && flutter clean cache && flutter pub get
printf '\n\n'

printf "core pub get\n"
cd core || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "core_ui pub get\n"
cd core_ui || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "data pub get\n"
cd data || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "domain pub get\n"
cd domain || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "navigation pub get\n"
cd navigation || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "sign in pub get\n"
cd features/sign_in || exit
flutter clean && flutter clean cache && flutter pub get
cd ../..
printf '\n\n'

printf "sign up pub get\n"
cd features/sign_up || exit
flutter clean && flutter clean cache && flutter pub get
cd ../..
printf '\n\n'

printf "home pub get\n"
cd features/home || exit
flutter clean && flutter clean cache && flutter pub get
cd ../..
printf '\n\n'

printf "profile pub get\n"
cd features/profile || exit
flutter clean && flutter clean cache && flutter pub get
cd ../..
printf '\n\n'

printf "generate localiztion files\n"
cd core || exit
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -O lib/src/localization/generated
cd ..
printf '\n\n'

cd data || exit
flutter pub run build_runner build --delete-conflicting-outputs
cd ..
printf '\n\n'

printf "generate route files\n"
cd navigation || exit
flutter pub run build_runner build --delete-conflicting-outputs
cd ..
printf '\n\n'
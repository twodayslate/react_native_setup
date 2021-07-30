#!/bin/bash
set -x
set -e

brew install node
brew install watchman
sudo gem install cocoapods

# https://github.com/CocoaPods/CocoaPods/issues/10220#issuecomment-730963835
sudo gem install ffi

npx react-native init AwesomeProject

cd AwesomeProject

pushd ios
# https://stackoverflow.com/a/68543052/193772
rm -rf ~/.cocoapods/repos/cocoapods
pod install
popd

# npx react-native start &
npx react-native run-ios
#!/bin/bash

brew install node
brew install watchman
sudo gem install cocoapods

# https://github.com/CocoaPods/CocoaPods/issues/10220#issuecomment-730963835
sudo arch -x86_64 gem install ffi

npx react-native init AwesomeProject

cd AwesomeProject

pushd ios
#pod install
arch -x86_64 pod install
popd

# npx react-native start &
npx react-native run-ios
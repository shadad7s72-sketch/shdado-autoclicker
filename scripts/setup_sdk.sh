#!/bin/bash
set -e
echo "Installing OpenJDK and Android SDK components..."
sudo apt-get update -y
sudo apt-get install -y openjdk-17-jdk wget unzip zip
export ANDROID_SDK_ROOT=$HOME/android-sdk
mkdir -p $ANDROID_SDK_ROOT/cmdline-tools
cd /tmp
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O cmdline-tools.zip
unzip cmdline-tools.zip -d $ANDROID_SDK_ROOT/cmdline-tools
mkdir -p $ANDROID_SDK_ROOT/licenses
yes | $ANDROID_SDK_ROOT/cmdline-tools/bin/sdkmanager --sdk_root=$ANDROID_SDK_ROOT "platform-tools" "platforms;android-34" "build-tools;34.0.0" "ndk;25.2.9519653"
echo "Android SDK installed in $ANDROID_SDK_ROOT"

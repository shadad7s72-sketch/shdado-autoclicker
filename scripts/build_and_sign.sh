#!/bin/bash
set -e
export ANDROID_SDK_ROOT=$HOME/android-sdk
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH
echo "Generating keystore..."
./scripts/generate_keystore.sh
echo "Starting Gradle build..."
./gradlew :app:assembleRelease --stacktrace
unsigned_apk=app/build/outputs/apk/release/app-release-unsigned.apk
signed_apk=app/build/outputs/apk/release/app-release-signed.apk
echo "Signing APK..."
$ANDROID_SDK_ROOT/build-tools/34.0.0/apksigner sign --ks keystore/autokey.jks --ks-pass pass:autokeypass --out ${signed_apk} ${unsigned_apk}
echo "Verifying APK..."
$ANDROID_SDK_ROOT/build-tools/34.0.0/apksigner verify ${signed_apk}
echo "Build and signing complete. Signed APK at: ${signed_apk}"

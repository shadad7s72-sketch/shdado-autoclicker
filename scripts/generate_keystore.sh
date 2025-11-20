#!/bin/bash
set -e
mkdir -p keystore
KEYSTORE=keystore/autokey.jks
if [ -f "$KEYSTORE" ]; then
  echo "Keystore already exists."
  exit 0
fi
echo "Creating keystore at $KEYSTORE"
keytool -genkeypair -v -keystore $KEYSTORE -alias autokey -keyalg RSA -keysize 2048 -validity 3650 -storepass autokeypass -keypass autokeypass -dname "CN=Shdad, OU=Dev, O=Shdad, L=City, ST=State, C=YE"

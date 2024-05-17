#!/bin/bash

# Install Flutter
git clone https://github.com/flutter/flutter.git -b stable --depth 1

# Export Flutter path
export PATH="$PATH:`pwd`/flutter/bin"

# Enable Flutter web
flutter config --enable-web

# Run Flutter doctor
flutter doctor

# Install dependencies
flutter pub get

# Build the web app
flutter build web --release

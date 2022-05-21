#!/bin/bash

echo "Start"
flutter --version 
npm install -g firebase-tools
firebase --version

cd app 
flutter pub get
flutter build -v web --release
#flutter pub run dart_code_metrics:metrics --reporter=github lib
cd -

cd public/web
#python3 -m http.server 8000
#firebase deploy --only hosting
firebase deploy
cd -
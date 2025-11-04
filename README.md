# Weather App (Flutter)

This is a minimal Flutter app that fetches live weather using the device's geolocation and the OpenWeatherMap API.

Features

- Requests location permission with `geolocator`.
- Fetches current weather via HTTP (`http` package).
- UI built with `FutureBuilder` and JSON parsing.

Setup

1. Ensure Flutter is installed locally and available in your PATH.
2. Add your OpenWeatherMap API key in `lib/config.dart`:

```dart
const String openWeatherApiKey = 'YOUR_API_KEY_HERE';
```

3. Add platform location permissions:

- Android: update `android/app/src/main/AndroidManifest.xml` with ACCESS_FINE_LOCATION and ACCESS_COARSE_LOCATION.
- iOS: add `NSLocationWhenInUseUsageDescription` in `ios/Runner/Info.plist`.

4. From the project root run:

```bash
flutter pub get
flutter run
```

Notes

- This repository contains only a simple example. For production, handle errors/caching and secure the API key.
# weatherapp
# expense-tracker

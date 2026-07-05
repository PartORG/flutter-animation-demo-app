# animation_app

A simple demo app that demonstrates animation possibilities of Flutter.

[![language](https://img.shields.io/badge/language-Dart-blue.svg)] [![runtime](https://img.shields.io/badge/runtime-Flutter-green.svg)] [![license](https://img.shields.io/badge/license-MIT-yellow.svg)] [![package manager](https://img.shields.io/badge/package%20manager-Pub-orange.svg)] [![framework](https://img.shields.io/badge/framework-Flutter-red.svg)] [![testing](https://img.shields.io/badge/testing-Yes-brightgreen.svg)]

## Introduction

The `animation_app` is a simple demo application built using Flutter. It showcases various animation possibilities within the Flutter framework, making it an excellent resource for developers looking to understand and implement animations in their own projects.

This project is structured to support multiple platforms including Android, iOS, macOS, Linux, Windows, and the web. It serves as a practical example of how to leverage Flutter's powerful animation capabilities across different devices and platforms.

## Table of Contents

- [Features](#features)
- [How It Works](#how-it-works)
- [Technology Stack](#technology-stack)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration](#configuration)
- [Quick Start](#quick-start)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Development](#development)
- [Testing](#testing)
- [Limitations](#limitations)
- [License](#license)

## Features

### Animation Possibilities

The app demonstrates various types of animations, including:

- **Implicit Animations**: Simple animations that can be applied to widgets without the need for explicit animation controllers.
- **Explicit Animations**: More complex animations controlled by `AnimationController` and `Animation` objects.
- **Tween Animations**: Animations that interpolate between two values using a `Tween`.
- **Curves**: Customizing the timing of animations with different curves like `Curves.easeIn`, `Curves.easeOut`, etc.

## How It Works

The app is structured as follows:

1. **Main Application Entry Point**: The main entry point for the application is in `lib/main.dart`. This file initializes the Flutter app and sets up the initial route.
2. **Home Screen**: The home screen (`lib/src/screens/home.dart`) contains a list of buttons that trigger different types of animations when pressed.
3. **Animation Widgets**: Various widgets (`lib/src/widgets/cat.dart`, etc.) are used to demonstrate specific animation techniques.

## Technology Stack

| Technology | Purpose |
|------------|---------|
| Flutter    | The UI software development kit created by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. |
| Dart       | A programming language developed by Google that compiles to efficient JavaScript and native machine code. |
| CMake      | An open-source, cross-platform family of tools designed to build, test, and package software. |

## Requirements

- Flutter SDK
- Android Studio (for Android development)
- Xcode (for iOS development)
- Visual Studio Code (or any IDE with Flutter support)

## Installation

To install the project, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/PartORG/flutter-animation-demo-app.git
   ```

2. Navigate to the project directory:
   ```sh
   cd flutter-animation-demo-app
   ```

3. Get dependencies:
   ```sh
   flutter pub get
   ```

4. Run the app on your desired platform:
   - For Android:
     ```sh
     flutter run --target=android
     ```
   - For iOS:
     ```sh
     flutter run --target=ios
     ```
   - For web:
     ```sh
     flutter run --target=web
     ```

## Configuration

The project does not require any specific configuration files or environment variables.

## Quick Start

To quickly get started with the app, follow these steps:

1. Clone the repository and navigate to the project directory.
2. Run the app on your desired platform using the commands provided in the [Installation](#installation) section.

## Usage

Here are some example commands and usage scenarios:

- **Running the App**:
  ```sh
  flutter run --target=android
  ```

- **Building for Android**:
  ```sh
  flutter build apk
  ```

- **Building for iOS**:
  ```sh
  flutter build ios
  ```

## Project Structure

```
animation_app/
├── android/
│   ├── app/
│   │   └── src/
│   │       └── main/
│   │           └── kotlin/
│   │               └── com/
│   │                   └── example/
│   │                       └── animation_app/
│   │                           └── MainActivity.kt
├── ios/
│   ├── Runner.xcodeproj/
│   ├── Runner/
│   │   └── AppDelegate.swift
├── lib/
│   ├── main.dart
│   ├── src/
│   │   ├── app.dart
│   │   ├── screens/
│   │   │   └── home.dart
│   │   └── widgets/
│   │       └── cat.dart
├── test/
│   └── widget_test.dart
└── web/
    ├── favicon.png
    ├── icons/
    │   ├── Icon-192.png
    │   ├── Icon-512.png
    │   ├── Icon-maskable-192.png
    │   └── Icon-maskable-512.png
    ├── index.html
    └── manifest.json
```

## Development

The development workflow for this project involves:

1. **Writing Code**: Develop the application logic in Dart.
2. **Testing**: Write unit and widget tests to ensure functionality.
3. **Building**: Build the app for different platforms using Flutter commands.

## Testing

This project includes basic widget tests located in `test/widget_test.dart`. To run the tests, use:

```sh
flutter test
```

## Limitations

- The demo does not cover all possible animation techniques available in Flutter.
- Some animations may not work as expected on certain platforms due to platform-specific limitations.

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file for more details.
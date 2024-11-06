# Riverpod Introduction
A basic Flutter app using Riverpod for state management.
Riverpod is a state management package in Flutter that is designed to be safe,
simple, and highly performant. It is more flexible and less error-prone than some
other state management solutions, allowing us to build scalable and maintainable Flutter
applications.

In this project, we'll explore:

- The basics of Riverpod
- Using different types of providers (for state and computed values)
- Creating and using custom notifier providers for more complex state management
- Notifier Providers for complex state management with methods to add and remove items
- Consumer Widgets to build reactive UIs that update when the state changes

### Install Riverpod

Add flutter_riverpod and riverpod_annotation to your pubspec.yaml:

```yaml
dependencies:
  flutter_riverpod: ^2.0.0
  riverpod_annotation: ^2.0.0

dev_dependencies:
  build_runner: ^2.0.0
  riverpod_generator: ^2.0.0
```

To generate the code for any annotated providers, use the following command:

    ```bash
    flutter pub run build_runner build
    ```

If you want the code generation to watch for changes automatically, you can run:

        ```bash
        flutter pub run build_runner watch
        ```

## Getting Started With Flutter

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

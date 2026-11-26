# Remas Land

A mobile e-commerce application for browsing and purchasing Remas Land products, built with Flutter for Android and iOS.

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey)
![Status](https://img.shields.io/badge/Status-In%20Development-orange)

---

## Overview

Remas Land is a customer-facing shopping app that lets users explore products and services, add items to a cart, and place orders from their phone. The UI was designed in Figma and implemented with a clean, scalable architecture that separates presentation, business logic, and data layers.

## Features

- **Home** with a featured banner, services, and stores sections
- **Product browsing** by category with a reusable listing screen
- **Product details** with images, description, and pricing
- **Shopping cart** with quantity management and order total
- **Checkout** and order placement
- **Stores** listing with branch information
- **Settings** and user profile
- Curved bottom navigation bar with an animated active tab
- English UI, structured to support localization (Arabic / RTL) later

> Edit this list to match what is actually implemented in your build.

## Screenshots

| Home | Products | Cart |
|------|----------|------|
| ![Home](docs/screenshots/home.png) | ![Products](docs/screenshots/products.png) | ![Cart](docs/screenshots/cart.png) |

> Add your screenshots to `docs/screenshots/` and update the file names above.

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Flutter (Dart) |
| State management | Provider / Bloc (replace with your choice) |
| Navigation | Navigator 2.0 / go_router (replace with your choice) |
| Backend | Local backend (update with your stack and base URL) |
| Design | Figma |

## Project Structure

```
lib/
├── core/            # Theme, constants, utilities, shared widgets
├── data/            # Models, repositories, API / local data sources
├── features/
│   ├── home/
│   ├── products/
│   ├── cart/
│   ├── stores/
│   └── settings/
├── navigation/      # Routes and bottom navigation
└── main.dart
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x or later)
- Android Studio or VS Code with the Flutter extension
- An Android emulator, iOS simulator, or a physical device

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/USERNAME/REPO_NAME.git
cd REPO_NAME

# 2. Install dependencies
flutter pub get

# 3. Run the app
flutter run
```

### Backend Setup

The app connects to a local backend during development.

1. Start the backend server (see the backend folder or its own README).
2. Set the API base URL in `lib/core/constants/api_constants.dart`.
3. When testing on a physical device, use your computer's local IP address instead of `localhost`. On the Android emulator, use `10.0.2.2`.

## Building for Release

```bash
# Android
flutter build apk --release
flutter build appbundle --release

# iOS (requires macOS)
flutter build ios --release
```

## Roadmap

- [ ] Arabic localization and RTL support
- [ ] Online payment integration
- [ ] Order tracking
- [ ] Push notifications
- [ ] Favorites / wishlist

## Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m "Add your feature"`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

## Author

**Sami**
Mobile Developer
[GitHub](https://github.com/USERNAME) · [LinkedIn](https://linkedin.com/in/USERNAME)

## License

This project is proprietary and developed for Remas Land. All rights reserved.

# Stroll Bonfire
Demo UI App

## Setup Instructions

### Prerequisites

1. **Flutter SDK**: Ensure you have Flutter installed on your machine. If not, follow the [installation guide](https://flutter.dev/docs/get-started/install).
2. **Android Studio/VS Code**: Install an IDE of your choice (Android Studio or Visual Studio Code) for Flutter development.
3. **Xcode (for iOS)**: If you are developing for iOS, make sure you have Xcode installed.

### Steps to Run

**Clone the repository:**
```bash
git clone https://github.com/Israela608/bonfire_ui.git
```

```bash
cd bonfire_ui
```

**Install dependencies:**
```bash
flutter pub get
```

**Configure the app icons:**
Add your app_logo.png image to the assets folder.

Update the flutter_launcher_icons configuration in pubspec.yaml.

Run the following command to generate icons:

```bash
flutter pub run flutter_launcher_icons:main
```
Run the app:

```bash
flutter run
```
For iOS, ensure that you have Xcode installed and use:
```bash
flutter run --ios
```

For Android, make sure you have an Android emulator or physical device connected, then use:
```bash
flutter run --android

```


## Code Structure
```
lib/core/: Utility functions, including app styles, colors and helpers.

lib/modules/: Contains the main screens and View architecture.
```


## Dependencies
**flutter_screenutil:** For responsive design.

**hooks_riverpod:** For state management.

**flutter_svg:** To display svgs.

**flutter_staggered_grid_view:** Display components in grid format.



# Igris

A modern, customizable Flutter component library with consistent styling across your application.

## Features

- 📱 **Pre-built UI Components**: A comprehensive collection of reusable widgets
- 🎨 **Theming System**: Consistent styling based on Material Design 3
- 🔧 **Highly Customizable**: Easily adapt components to your brand
- 📊 **Responsive**: Components work on various screen sizes

## Components

The library includes:
- Buttons (standard, wide FAB, mini FAB)
- Cards and outlined cards
- Collapsible sections
- Topsheets and bottomsheets
- List tiles and list views
- Loading indicators
- Typography (headlines, etc.)
- And many more!

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  igris: ^0.0.1
```

Then run:

```
flutter pub get
```

## Usage

### Import the package

```dart
import 'package:igris/igris.dart';
```

### Using components

```dart
// Example of using a WideFAB
WideFAB(
  label: 'Continue',
  onPressed: () => print('Pressed'),
)

// Example of using a Tile
Tile(
  title: '1.1 Introduction',
  subtitle: 'Learn the basics',
  icon: Icons.book,
  onTap: () => print('Tile tapped'),
)
```

### Using the theme

```dart
// In your MaterialApp
MaterialApp(
  theme: AppTheme.lightTheme(),
  darkTheme: AppTheme.darkTheme(),
  // ...
)
```

## Examples

For more examples, please see the `/example` folder in the repository.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

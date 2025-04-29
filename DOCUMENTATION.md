# Igris Package Structure

The Igris package is organized as follows to maintain a clean and modular architecture:

## Top-Level Structure

```
igris/
├── lib/
│   ├── components/       # UI components
│   ├── theme/            # Theming system
│   └── igris.dart        # Main library file
├── example/              # Example app demonstrating usage
├── test/                 # Tests
└── pubspec.yaml          # Package metadata
```

## Components Directory

The `components/` directory contains standalone UI widgets that can be used in any Flutter application.
Each component is in its own file for better code organization:

```
components/
├── bottomsheet.dart
├── button.dart
├── collapsible.dart
├── fab.dart
├── google_sso_button.dart
├── greeting.dart
├── headline.dart
├── landing_topsheet.dart
├── mini_fab.dart
├── outlined_card.dart
├── selectable_list_tile.dart
├── selectable_list_view.dart
├── sliver_loading_indicator.dart
├── tile.dart
├── topsheet.dart
├── unordered_list.dart
└── wide_fab.dart
```

## Theme Directory

The `theme/` directory contains classes and constants for a consistent theming system:

```
theme/
├── app_colors.dart       # Color definitions
├── app_text_theme.dart   # Typography styles
└── app_theme.dart        # ThemeData configuration
```

## Using the Library

All components and theme assets are exported through the main `igris.dart` file,
allowing users to import everything with a single import statement:

```dart
import 'package:igris/igris.dart';
```

This gives access to all components and theme utilities from the package.

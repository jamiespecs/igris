import 'package:flutter/material.dart';

/// A customizable list tile that can be selected.
///
/// This widget extends [ListTile] with selection styling and
/// different variants for different use cases in the app.
class SelectableListTile extends StatelessWidget {
  /// The title text of the list tile
  final String title;

  /// Function to call when the tile is tapped
  final VoidCallback onTap;

  /// Whether this tile is currently selected
  final bool isSelected;

  /// Optional trailing text or widget
  final Widget? trailing;

  /// Optional subtitle text
  final String? subtitle;

  /// The variant of list tile to display
  /// Default shows a standard height tile with title and optional trailing
  /// Large shows a taller tile with title and subtitle
  final SelectableListTileVariant variant;

  const SelectableListTile({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
    this.trailing,
    this.subtitle,
    this.variant = SelectableListTileVariant.defaultVariant,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      shape:
          isSelected
              ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2),
              )
              : null,
      child: _buildListTileVariant(context),
    );
  }

  Widget _buildListTileVariant(BuildContext context) {
    switch (variant) {
      case SelectableListTileVariant.large:
        return ListTile(
          minVerticalPadding: 20.0,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          subtitle:
              subtitle != null
                  ? Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      subtitle!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                      ),
                    ),
                  )
                  : null,
          onTap: onTap,
        );

      case SelectableListTileVariant.defaultVariant:
        return ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          trailing:
              trailing != null
                  ? DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color:
                          isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.outline,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.w100,
                    ),
                    child: trailing!,
                  )
                  : null,
          onTap: onTap,
        );
    }
  }
}

/// Defines the available variants for [SelectableListTile]
enum SelectableListTileVariant {
  /// Default variant with standard height and trailing
  defaultVariant,

  /// Large variant with increased height and subtitle
  large,
}

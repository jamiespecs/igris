import 'package:flutter/material.dart';

/// A styled tile widget for displaying individual lessons or modules in the curriculum.
///
/// This widget creates a visually distinct card-like tile with a leading icon container,
/// title, and subtitle for representing learning content items.
class Tile extends StatelessWidget {
  /// The primary title of the tile (e.g., "1.1. Grammar Accuracy").
  final String title;
  
  /// The descriptive subtitle of the tile.
  final String? subtitle;
  
  /// The icon to display in the leading container.
  final IconData icon;
  
  /// The color of the tile background.
  final Color? backgroundColor;

  final Color? iconBackgroundColor;
  
  /// The color of the icon.
  final Color? iconColor;
  
  /// The border radius of the tile.
  final double borderRadius;
  
  /// Function to call when the tile is tapped.
  final VoidCallback? onTap;
  
  /// Creates a curriculum tile widget.
  const Tile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon = Icons.check_circle_outline,
    this.iconBackgroundColor,
    this.backgroundColor,
    this.iconColor,
    this.borderRadius = 16.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: iconBackgroundColor ?? Theme.of(context).colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(borderRadius - 4),
                    ),
                    child: Icon(
                      icon,
                      color: iconColor ?? Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    subtitle != null
                        ? Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text(
                              subtitle!,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                        )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

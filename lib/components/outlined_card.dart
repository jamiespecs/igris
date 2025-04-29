import 'package:flutter/material.dart';

/// A custom card widget with border and rounded corners.
/// 
/// This card is designed to be flexible in width and height,
/// and used for displaying content with consistent styling.
class OutlinedCard extends StatelessWidget {
  /// Child widget to display inside the card
  final Widget child;

  /// Width of the card (optional, defaults to 90% of screen width)
  final double? width;

  /// Custom padding inside the card (optional)
  final EdgeInsetsGeometry padding;

  /// Custom margin around the card (optional)
  final EdgeInsetsGeometry margin;

  /// Color scheme to use for the card (optional, defaults to outlineVariant)
  final Color? borderColor;

  /// Width of the border (optional, defaults to 2)
  final double borderWidth;

  const OutlinedCard({
    super.key,
    required this.child,
    this.width,
    this.padding = const EdgeInsets.all(20),
    this.margin = const EdgeInsets.only(top: 24, bottom: 28),
    this.borderColor,
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: borderColor ?? Theme.of(context).colorScheme.outlineVariant,
          width: borderWidth,
        ),
      ),
      child: child,
    );
  }
}

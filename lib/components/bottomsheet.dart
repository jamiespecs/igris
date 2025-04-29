import 'package:flutter/material.dart';

/// A custom bottom sheet widget with rounded top corners.
/// 
/// This widget provides a standardized bottom sheet container
/// that can hold various content with consistent styling.
class Bottomsheet extends StatelessWidget {
  /// Child widget to display inside the bottom sheet
  final Widget child;
  
  /// Color of the bottom sheet (optional)
  final Color? backgroundColor;
  
  /// Padding inside the bottom sheet (optional)
  final EdgeInsetsGeometry padding;
  
  /// Border radius for the top corners (optional)
  final BorderRadius borderRadius;

  const Bottomsheet({
    super.key,
    required this.child,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(28),
      topRight: Radius.circular(28),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: borderRadius,
      ),
      padding: padding,
      child: child,
    );
  }
}

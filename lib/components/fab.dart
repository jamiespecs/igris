import 'package:flutter/material.dart';

/// A custom floating action button widget.
/// 
/// This widget provides a standardized large floating action button
/// with consistent styling for microphone and playback controls.
class FAB extends StatelessWidget {
  /// Function to call when the button is pressed
  final VoidCallback onPressed;
  
  /// Icon to display inside the button
  final IconData icon;
  
  /// Size of the icon
  final double iconSize;
  
  /// Color of the icon
  final Color? iconColor;

  const FAB({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconSize = 48,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      onPressed: onPressed,
      heroTag: null,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}

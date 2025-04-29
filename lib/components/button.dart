import 'package:flutter/material.dart';

/// A custom button widget with optional icon support.
/// 
/// This button can be used with or without an icon and provides
/// consistent styling across the app.
class Button extends StatelessWidget {
  /// Text to display on the button
  final String text;
  
  /// Function to call when the button is pressed
  final VoidCallback onPressed;
  
  /// Optional icon to display next to the text
  final IconData? icon;
  
  /// Size of the icon (if provided)
  final double iconSize;
  
  /// Whether to show the icon after the text (true) or before (false)
  final bool iconAfter;
  
  /// Text style for the button label
  final TextStyle? textStyle;

  /// Optional background color (if provided)
  final Color? backgroundColor;
  
  /// Color of the icon (if provided)
  final Color? iconColor;
  
  /// Spacing between icon and text
  final double spacing;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconSize = 24,
    this.iconAfter = true,
    this.textStyle,
    this.iconColor,
    this.backgroundColor,
    this.spacing = 8,
  });

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = textStyle ?? 
      Theme.of(context).textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
    
    final buttonIcon = icon != null
        ? Icon(
            icon,
            color: iconColor ?? Colors.white,
            size: iconSize,
          )
        : null;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!iconAfter && buttonIcon != null) ...[
            buttonIcon,
            SizedBox(width: spacing),
          ],
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              text,
              style: buttonTextStyle,
            ),
          ),
          if (iconAfter && buttonIcon != null) ...[
            SizedBox(width: spacing),
            buttonIcon,
          ],
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// A wide Floating Action Button commonly used for navigation actions.
///
/// This widget extends the functionality of [FloatingActionButton.extended] 
/// with a consistent styling across the app, particularly in onboarding flows.
class WideFAB extends StatelessWidget {
  /// Text label to display in the button
  final String label;
  
  /// Function to execute when the button is pressed
  final VoidCallback onPressed;
  
  /// Optional icon to display after the text (defaults to chevron_right)
  final Widget? trailingIcon;
  
  /// Optional background color (defaults to primary color)
  final Color? backgroundColor;
  
  /// Optional text color (defaults to onPrimary color)
  final Color? textColor;

  const WideFAB({
    super.key,
    required this.label,
    required this.onPressed,
    this.trailingIcon = const Icon(Icons.chevron_right_rounded, size: 36),
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: textColor ?? Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      label: trailingIcon ?? const Icon(Icons.chevron_right_rounded, size: 36),
      extendedPadding: const EdgeInsets.only(left: 36.0, right: 24.0),
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
    );
  }
}

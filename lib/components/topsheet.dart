import 'package:flutter/material.dart';
import 'greeting.dart';

/// A customizable topsheet widget that can be used across the app.
///
/// This widget creates a curved container at the top of the screen with
/// optional greeting, header, and subheader text.
class Topsheet extends StatelessWidget {
  /// Optional back button
  final bool? isBackButtonEnabled;

  /// Optional greeting icon path (SVG)
  final String? greetingIconPath;
  
  /// Optional greeting text to show next to the icon
  final String? greetingText;
  
  /// The main header text displayed in the topsheet
  final String headerText;
  
  /// Optional subheader or description text
  final String? subheaderText;
  
  /// Whether the header text should have line breaks preserved
  final bool preserveHeaderLineBreaks;
  
  /// Optional color for the background. If not provided, uses the theme's secondary color.
  final Color? backgroundColor;
  
  /// Optional padding for the entire topsheet content
  final EdgeInsetsGeometry padding;
  
  /// Optional custom widget to display instead of the default header/subheader
  final Widget? customContent;

  const Topsheet({
    super.key,
    this.isBackButtonEnabled,
    this.greetingIconPath,
    this.greetingText,
    required this.headerText,
    this.subheaderText,
    this.preserveHeaderLineBreaks = true,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(vertical: 56, horizontal: 24.0),
    this.customContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: padding,
        child: customContent ?? _buildDefaultContent(context),
      ),
    );
  }

  /// Builds the default content layout with greeting, header and subheader
  Widget _buildDefaultContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Optional back button
        if (isBackButtonEnabled == true) ...[
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          const SizedBox(height: 24),
        ],

        // Only show greeting row if either icon or text is provided
        if (greetingIconPath != null || greetingText != null) ...[
          Greeting(
            iconPath: greetingIconPath,
            message: greetingText,
          ),
          const SizedBox(height: 36),
        ],
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerText,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Colors.white,
              ),
            ),
            if (subheaderText != null) ...[
              const SizedBox(height: 12),
              Text(
                subheaderText!,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

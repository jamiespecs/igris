import 'package:flutter/material.dart';

/// A widget that displays a section headline with a divider.
///
/// This widget is typically used to display section titles in the curriculum,
/// with a consistent style and a divider underneath.
class Headline extends StatelessWidget {
  /// The text to display as the headline.
  final String title;

  final String? subtitle;

  /// The text style for the headline. If null, displaySmall with primary color will be used.
  final TextStyle? titleStyle;

  /// The thickness of the divider. Defaults to 2.0.
  final double dividerThickness;

  /// The padding around the headline. Defaults to zero.
  final EdgeInsetsGeometry padding;

  /// The height between the title and the divider. Defaults to 12.0.
  final double spacingHeight;

  final bool? isDividerEnabled;

  /// Creates a headline widget with a title and divider.
  const Headline({
    super.key,
    required this.title,
    this.subtitle,
    this.titleStyle,
    this.dividerThickness = 2.0,
    this.padding = EdgeInsets.zero,
    this.spacingHeight = 12.0,
    this.isDividerEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle ?? 
                Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          subtitle != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    subtitle!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                )
              : const SizedBox.shrink(),
          SizedBox(height: spacingHeight),
          isDividerEnabled == true
              ? Divider(thickness: dividerThickness)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// A widget that displays a greeting with an optional icon and text.
///
/// This widget creates a row with an SVG icon and greeting text.
class Greeting extends StatelessWidget {
  /// Optional greeting icon path (SVG)
  final String? iconPath;
  
  /// Optional greeting text to show next to the icon
  final String? message;

  /// Greeting text color
  final Color? color;

  const Greeting({
    super.key,
    this.iconPath,
    this.message,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (iconPath != null) ...[
          SvgPicture.asset(iconPath!),
          const SizedBox(width: 16),
        ],
        if (message != null)
          Text(
            message!,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: color ?? Colors.white,
            ),
          ),
      ],
    );
  }
}

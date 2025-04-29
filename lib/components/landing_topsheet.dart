import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// A custom topsheet widget for the app's authentication screens.
/// 
/// Displays an app title, tagline, and an image in a curved container.
class LandingTopsheet extends StatelessWidget {
  /// The title of the app to be displayed.
  final String title;
  
  /// The tagline or subtitle text to be displayed.
  final String tagline;
  
  /// The path to the image asset (SVG or PNG).
  final String imagePath;
  
  /// Whether the image is an SVG. If false, assumes it's a PNG or other regular image format.
  final bool isSvg;
  
  /// Optional color for the background. If not provided, uses the theme's secondary color.
  final Color? backgroundColor;

  const LandingTopsheet({
    super.key,
    required this.title,
    required this.tagline,
    required this.imagePath,
    this.isSvg = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 56),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 64),
                    Text(
                      tagline,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              isSvg 
                ? SvgPicture.asset(imagePath)
                : Image.asset(imagePath),
            ],
          ),
        ),
      ),
    );
  }
}

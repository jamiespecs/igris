import 'package:flutter/material.dart';

/// A sliver-compatible loading indicator widget.
///
/// This widget wraps a [CircularProgressIndicator] in a [SliverFillRemaining]
/// to make it compatible with [CustomScrollView] and other sliver-based layouts.
class SliverLoadingIndicator extends StatelessWidget {
  /// Optional color for the progress indicator
  final Color? color;
  
  /// Optional stroke width for the progress indicator
  final double strokeWidth;
  
  const SliverLoadingIndicator({
    super.key,
    this.color,
    this.strokeWidth = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(
          color: color ?? Theme.of(context).colorScheme.primary,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}

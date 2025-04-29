import 'package:flutter/material.dart';

/// A sliver list view that displays selectable items.
///
/// This widget provides a standardized way to display a list of selectable items
/// within a [CustomScrollView]. It handles the padding and layout consistently
/// across the app.
class SelectableListView extends StatelessWidget {
  /// The number of items in the list
  final int itemCount;
  
  /// Builder function to create each item in the list
  final Widget Function(BuildContext context, int index) itemBuilder;
  
  /// Optional bottom padding to ensure content is visible above FAB
  final double bottomPadding;

  const SelectableListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.bottomPadding = 80.0,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ).copyWith(bottom: bottomPadding),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          itemBuilder,
          childCount: itemCount,
        ),
      ),
    );
  }
}

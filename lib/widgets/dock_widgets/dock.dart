import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

/// Dock of the reorderable [items].
class Dock<T> extends StatefulWidget {
  const Dock({
    super.key,
    this.items = const [],
    required this.builder,
  });

  /// Initial [T] items to put in this [Dock].
  final List<T> items;

  /// Builder building the provided [T] item.
  final Widget Function(T) builder;

  @override
  State<Dock<T>> createState() => _DockState<T>();
}

/// State of the [Dock] used to manipulate the [_items].
class _DockState<T> extends State<Dock<T>> {
  /// [T] items being manipulated.
  late List<T> _items; // Remove `final` to allow dynamic changes

  @override
  void initState() {
    super.initState();
    _items = widget.items.toList(); // Copy the initial items
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black12,
      ),
      padding: const EdgeInsets.all(8.0),
      child: ReorderableRow(
        needsLongPressDraggable: false,
        draggingWidgetOpacity: 0.0,
        onReorder: (int oldIndex, int newIndex) {
          final item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
          setState(() {});
        },
        children: _items
            .asMap()
            .entries
            .map(
              (entry) => KeyedSubtree(
                key: ValueKey(entry.key),
                child: widget.builder(entry.value),
              ),
            )
            .toList(),
      ),
    );
  }
}

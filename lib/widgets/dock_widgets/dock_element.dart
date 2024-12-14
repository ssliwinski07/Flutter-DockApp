import 'package:flutter/material.dart';

class DockElement extends StatelessWidget {
  const DockElement({super.key, required this.elementIcon});

  final IconData elementIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 48),
      height: 48,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.primaries[elementIcon.hashCode % Colors.primaries.length],
      ),
      child: Center(
        child: Icon(elementIcon, color: Colors.white),
      ),
    );
  }
}

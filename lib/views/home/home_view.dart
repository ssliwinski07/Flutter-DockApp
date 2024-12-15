import 'package:flutter/material.dart';

import 'package:flutter_dock_app/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "DOCK WITH REORDERABLE ELEMENTS";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text(title),
      ),
      body: Center(
        child: Dock<IconData>(
          items: const [
            Icons.person,
            Icons.message,
            Icons.call,
            Icons.camera,
            Icons.photo,
            Icons.ice_skating,
          ],
          builder: (e) => DockElement(elementIcon: e),
          isReorderable: true,
        ),
      ),
    );
  }
}

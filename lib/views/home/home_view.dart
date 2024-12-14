import 'package:flutter/material.dart';

import 'package:flutter_dock_app/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),
      ),
    );
  }
}

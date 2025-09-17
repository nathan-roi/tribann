import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navigationBar(),
    );
  }

  Widget navigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'map',
          icon: Icon(Icons.map_outlined)
        ),
        BottomNavigationBarItem(
          label: 'messages',
          icon: Icon(Icons.messenger_outline_sharp)
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavBar({
    super.key,
    required this.currentIndex,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navigationBar(),
    );
  }

  Widget navigationBar() {
    return Container(
      margin: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 10.0
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              label: 'map',
              icon: Icon(Icons.map_outlined),
            ),
            BottomNavigationBarItem(
              label: 'messages',
              icon: Icon(Icons.messenger_outline_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Définition des items
    final items = [
      {'icon': Icons.map_outlined, 'label': 'Map'},
      {'icon': Icons.messenger_outline_rounded, 'label': 'Messages'},
    ];

    // Taille du carré actif
    const double activeSquareSize = 42;
    const double padding = 10;

    return Container(
      margin: const EdgeInsets.all(padding),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4),
        ],
      ),      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final isActive = index == currentIndex;

          return GestureDetector(
            onTap: () => onTap(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOutCirc,
              width: activeSquareSize,
              height: activeSquareSize,
              decoration: BoxDecoration(
                color: isActive ? Colors.green : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                items[index]['icon'] as IconData,
                color: isActive ? Colors.white : Colors.black,
                size: 24,
              ),
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tribann/pages/components/nav_bar.dart';
import 'package:tribann/pages/map/map.dart';
import 'package:tribann/pages/messages.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _selectedIndex = 0;
  var selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){

    Widget page;
    switch (selectedIndex){
      case 0:
        page = const MapPage();
        break;
      case 1:
        page = const Messages();
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      body: page,
      bottomNavigationBar: NavBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
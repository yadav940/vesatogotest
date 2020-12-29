import 'package:flutter/material.dart';
import 'package:vesatogo_test/ui/account/account.dart';
import 'package:vesatogo_test/ui/dashboard/dashboard.dart';
import 'package:vesatogo_test/ui/tracking/tracking.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Tracking(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location),
            label: 'Tracking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_history),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}
}

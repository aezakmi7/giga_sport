import 'package:flutter/material.dart';
import 'package:giga_sport_flutter/screens/homescreen.dart';
import 'package:giga_sport_flutter/screens/payments_screen.dart';
import 'package:giga_sport_flutter/screens/profile_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    const PaymentsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(_currentIndex == 0
            ? 'Головна'
            : _currentIndex == 1
                ? 'Абонементи'
                : 'Мій профіль'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Головна',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Абонементи',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Мій профіль',
          ),
        ],
      ),
    );
  }
}

// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'by_author_page.dart';
import 'by_title_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  final int initialIndex;

  const HomePage({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _selectedIndex;

  final List<Widget> _pages = [
    ByAuthorPage(),
    ByTitlePage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Define your custom styles here
  final Color _navBarBackgroundColor = Colors.white; // Set your background color
  final Color _selectedItemColor = Colors.blue;      // Color for selected item
  final Color _unselectedItemColor = Colors.grey;    // Color for unselected items
  final TextStyle _selectedLabelStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    fontFamily: 'YourCustomFont',
  );
  final TextStyle _unselectedLabelStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
    fontFamily: 'YourCustomFont',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _navBarBackgroundColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
        selectedLabelStyle: _selectedLabelStyle,
        unselectedLabelStyle: _unselectedLabelStyle,
        showUnselectedLabels: true, // Show labels for unselected items
        type: BottomNavigationBarType.fixed, // Use fixed type for more than 3 items
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(Icons.person) // Change to your selected icon
                : Icon(Icons.person_outline), // Change to your unselected icon
            label: 'By Author',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(Icons.title)
                : Icon(Icons.title_outlined),
            label: 'By Title',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Icon(Icons.account_circle)
                : Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

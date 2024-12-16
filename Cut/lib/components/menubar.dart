// components/menubar.dart
import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({super.key});

  @override
  MenuBarState createState() => MenuBarState();
}

class MenuBarState extends State<MenuBar> {
  int _currentIndex = 1;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Handle additional tab selection logic here
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFEF6950),
            Color(0xFF3B0900),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.notifications, 1),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.payment, 2),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person, 3),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red.shade300,
        unselectedItemColor: Colors.white.withOpacity(0.8),
        onTap: _onTap,
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    bool isSelected = _currentIndex == index;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected
            ? Colors.red.shade100.withOpacity(0.2)
            : Colors.transparent,
      ),
      child: Icon(
        icon,
        size: isSelected ? 30 : 24,
        color: isSelected
            ? const Color.fromARGB(255, 221, 218, 217)
            : Colors.white,
      ),
    );
  }
}

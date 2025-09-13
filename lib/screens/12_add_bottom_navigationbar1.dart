import 'package:flutter/material.dart';

class AddBottomNavigationBar1 extends StatelessWidget {
  const AddBottomNavigationBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('H O M E  S C R E E N'.toUpperCase(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person_4), label: 'Users'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
      ],
      ),
    );
  }
}

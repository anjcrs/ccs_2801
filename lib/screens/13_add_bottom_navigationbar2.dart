import 'package:flutter/material.dart';

class AddBottomNavigationBar2 extends StatefulWidget {
  const AddBottomNavigationBar2({super.key});

  @override
  State<AddBottomNavigationBar2> createState() => _AddBottomNavigationBar2State();
}

class _AddBottomNavigationBar2State extends State<AddBottomNavigationBar2> {
int _selectedIndex = 0;
static const TextStyle _styleOpt = TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold
);
  static const List <Widget> _screenOpt = <Widget>[
    Text(
        'Home Screen',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
        'Settings Screen',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
        'School',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu),
        title: Text('Home'),
      ),
      body: Center(
        child: _screenOpt.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person_4), label: 'Users'),
      ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onTapped,
      ),
    );
  }
}

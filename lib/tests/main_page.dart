import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
int _selectedIndex = 0;

static const TextStyle _styleopt = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold
);

static const List <Widget> _screenOpt = <Widget>[
  Text(
    'Home Screen',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  ),

  Text(
    'Users Screen',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  ),
  Text(
    'Settings Screen',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
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
      appBar: AppBar(title: Text('H O M E'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 50,
                  color: Colors.red,
                )
            )
          ],
        ),
      ),

      body: Center(
        child: _screenOpt.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person_4), label: 'Users'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onTapped,
      ),
    );
  }
}

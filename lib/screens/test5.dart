import 'package:flutter/material.dart';

class Test5 extends StatefulWidget {
  const Test5({super.key});

  @override
  State<Test5> createState() => _Test5State();
}

class _Test5State extends State<Test5> {
  int _selectedIndex = 0;

  static const TextStyle _styleOpt = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold
  );

  static final List<Widget> _screenOpt = <Widget>[

    // HOME
    Center(
      child: Text(
        'Home Screen',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    // CONTAINER WIDGET SCREEN
    Center(
      child: Column(
        children: [
          Text(
            'Container Widget',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    ),

    // COLUMN WIDGET
    // COLUMN WIDGET - Updated version with right column added
    Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Column Widget',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),

                // LEFT COLUMN (your existing code)
                SizedBox(height: 20),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),

                // CENTER COLUMN (your existing code)
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // RIGHT COLUMN - NEW ADDITION (aligned with left column)
            Positioned(
              right: 0,
              top: 60, // Same starting position as left column
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),


    // ROW WIDGET
    Center(
      child: Text(
          'Row Widget',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
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
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Home'),
        actions: <Widget>[
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: _screenOpt.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_4x4_rounded),
          label: 'Container'),
          BottomNavigationBarItem(icon: Icon(Icons.view_column),
          label: 'Column'),
          BottomNavigationBarItem(icon: Icon(Icons.table_rows),
          label: 'Rows'),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onTapped,
      ),
    );
  }
}

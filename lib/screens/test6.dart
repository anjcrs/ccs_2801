import 'package:flutter/material.dart';

class Test6 extends StatefulWidget {
  const Test6({super.key});

  @override
  State<Test6> createState() => _Test6State();
}

class _Test6State extends State<Test6> {
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
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
        ],
      ),
    ),

    // COLUMN WIDGET - LEFT AND RIGHT ALIGNED, CENTER AT BOTTOM
    Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
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

                  // LEFT COLUMN
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

                  // CENTER COLUMN - BACK TO BOTTOM POSITION
                  SizedBox(height: 20),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
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

                  SizedBox(height: 50),
                ],
              ),

              // RIGHT COLUMN - ALIGNED WITH LEFT COLUMN HEIGHT
              Positioned(
                right: 0,
                top: 80, // Same as left column
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
    ),

    // Row Widget Screen
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Row Widget',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          //First Row
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.yellow,
              ),

              SizedBox(width: 80),
              Container(
                height: 80,
                width: 80,
                color: Colors.brown,
              ),

              SizedBox(width: 80),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
            ],
          ),
          //Second Row
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.transparent,
              ),
              SizedBox(width: 80),
              Container(
                height: 80,
                width: 80,
                color: Colors.black,
              ),
              SizedBox(width: 80),
              Container(
                height: 80,
                width: 80,
                color: Colors.transparent,
              ),
            ],
          ),
          //Third Row
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.orange,
              ),
              SizedBox(width: 80), // Empty space in middle
              Container(
                height: 80,
                width: 80,
                color: Colors.pink,
              ),
              SizedBox(width: 80), // Empty space in middle
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
            ],
          ),
        ],
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
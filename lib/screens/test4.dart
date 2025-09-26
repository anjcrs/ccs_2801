import 'package:flutter/material.dart';

class Test4 extends StatefulWidget {
  const Test4({super.key});

  @override
  State<Test4> createState() => _Test4State();
}

class _Test4State extends State<Test4> {
  int _selectedIndex = 0;

  static const TextStyle _styleOpt = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold
  );

  static final List<Widget> _screenOpt = <Widget>[
    // Home Screen
    const Center(
      child: Text(
        'Home Screen',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),

    // Container Widget Screen
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          const Text(
            'Container Widget',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
          ),
        ],
      ),
    ),

    // Column Widget Screen
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          const Text(
            'Column Widget',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          // Left column of blue containers
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left column
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),

                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                ],
              ),


              // Center column
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                ],
              ),

              // Right column
              Column(
                children: [
                  SizedBox(height: 160),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),

    // Row Widget Screen
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'Row Widget',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 50),
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
            ],
          ),

          SizedBox(height: 50),
          // First row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.purple,
              ),
              SizedBox(width: 80,),
              Container(
                height: 80,
                width: 80,
                color: Colors.black,
              ),
            ],
          ),

          SizedBox(height: 30),
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
            ],
          ),
        ],
      ),
    ),


    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 80,
          width: 80,
          color: Colors.blue,
        ),
      ],
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
        leading: const Icon(Icons.menu),
        title: const Text('Home'),
        actions: const <Widget>[
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
        actionsIconTheme: const IconThemeData(
            color: Colors.black
        ),
      ),
      body: _screenOpt.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_sharp), label: 'Container'),
          BottomNavigationBarItem(icon: Icon(Icons.view_column), label: 'Column'),
          BottomNavigationBarItem(icon: Icon(Icons.table_rows_sharp), label: 'Row'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onTapped,
      ),
    );
  }
}

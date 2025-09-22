import 'package:flutter/material.dart';

class Test3 extends StatefulWidget {
  const Test3({super.key});

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  int _selectedIndex = 0;
  static const TextStyle _styleOpt = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold
  );
  static final List<Widget> _screenOpt = <Widget>[
    const Scaffold(
      body: Text(
        'Home Screen',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),

    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10,
      children: <Widget>[
        const Text(
          'Container Widget',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 100,
          width: 70,),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          alignment: Alignment.centerLeft,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.black,
        )
      ]
    ),

    Column(
      children: <Widget>[
        Text(
          'Column Widget',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]
    ),
    SizedBox(height: 10, width: 30,),
    Container(
      height: 30,
      width: 30,
      color: Colors.blue,
    ),


    const Text(
      'Row Widget',
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
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Home'),
        actions: <Widget>[
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
        actionsIconTheme: IconThemeData(
            color: Colors.black
        ),
      ),
      body: Center(
          child: _screenOpt.elementAt(_selectedIndex)
      ),
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

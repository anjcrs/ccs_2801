import 'package:flutter/material.dart';

class test10 extends StatefulWidget {
  const test10({super.key});

  @override
  State<test10> createState() => _test10State();
}


class _test10State
    extends State<test10> {
  int _selectedIndex = 0;

  static const TextStyle _styleOpt = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _iconTitle = <Widget>[
    Text('Home'),
    Text('Container'),
    Text('Column'),
    Text('Row'),
  ];

  static final List<Widget> _screenOpt = <Widget>[

    // INDEX 0
    Text('Home Screen', style: _styleOpt),

    // INDEX 1
    Column(mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('Container Widget', style: _styleOpt,),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ], ), ],
    ),

    Column(mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Column Widget', style: _styleOpt),
          ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],),
          ],),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],),
          ],)
      ],),

    // INDEX 3
    Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Container Widget', style: _styleOpt,),
        SizedBox(height: 30,),
        Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],),
          ],)
      ],
    ),
  ];


  void _onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: _screenOpt.elementAt(_selectedIndex)
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.blue,),
        title: _iconTitle.elementAt(_selectedIndex),
        actions: <Widget>[
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person)
        ],
        actionsIconTheme: IconThemeData(
            color: Colors.black54),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Containers'),
          BottomNavigationBarItem(icon: Icon(Icons.view_column_sharp), label: 'Column'),
          BottomNavigationBarItem(icon: Icon(Icons.table_rows_sharp), label: 'Rows'),

        ],
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onTapped,
      ),
    );
  }
}
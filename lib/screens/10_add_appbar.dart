import 'package:flutter/material.dart';

class AddAppBar extends StatelessWidget {
  const AddAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('H O M E'),
        actions: <Widget>[
          Icon(Icons.notifications),
          Icon(Icons.person),
          Icon(Icons.settings),
          Icon(Icons.home),
        ],
        actionsIconTheme: IconThemeData(
            color: Colors.lightGreen
        ),
      ),
      body: Center(
        child: Text('H O M E  S C R E E N'.toUpperCase(),
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0c71c3),
      appBar: AppBar(
        title: Text('Central Philippine University'),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.person_2_rounded),
        ],
        backgroundColor: Color(0xFFe1ad3f),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF9a2223),
        shadowColor: Color(0xFFe1ad3f),
        child: Column(
          children: [
            Icon(
              Icons.school,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.logout,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.info,
              size: 20,
              color: Colors.black,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}

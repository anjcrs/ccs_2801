import 'package:flutter/material.dart';

class AddBottomAppBar extends StatelessWidget {
  const AddBottomAppBar({super.key});

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
        bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.person),
              Icon(Icons.settings),
              Icon(Icons.school),
            ],
          ),
        ),
    );
  }
}

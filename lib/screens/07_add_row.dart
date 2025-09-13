import 'package:flutter/material.dart';

class AddRow extends StatelessWidget {
  const AddRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.purple,
            height: 100,
            width: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
        ],
      )),
    );
  }
}

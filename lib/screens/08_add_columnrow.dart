import 'package:flutter/material.dart';

class AddColumnRow extends StatelessWidget {
  const AddColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 100,
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            color: Colors.pink,
            height: 100,
            width: 100,
          ),SizedBox(
            height: 10,
          ),
          Row(
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
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class ActivityNumber1 extends StatelessWidget {
  const ActivityNumber1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start  ,
      children: [

        Container(
        color: Colors.blue,
          child: Text(
            'Widget Utilization    Part 1',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        SizedBox(
            height: 30),
        Column(
          children: [
            Container(
              child: Text(
                'Column Widget:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left
              ),
            ),
          ],
        ),

        SizedBox(
            height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              width: 50,
              height: 80,
              color: Colors.green,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

              SizedBox(height: 10),
              Container(
              width: 50,
              height: 80,
              color: Colors.green,
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

              SizedBox(height: 10),
              Container(
              width: 50,
              height: 80,
              color: Colors.green,
              child: Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),

          SizedBox(height: 30),
            Text(
            'Row Widget:',
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.left,
        ),

          SizedBox(height: 10),

          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 80,
              color: Colors.green,
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(width: 10),
              Container(
                width: 50,
                height: 80,
                color: Colors.green,
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            SizedBox(width: 10),
            Container(
              width: 50,
              height: 80,
              color: Colors.green,
              child: Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
      ),
      ),
    );
  }
}
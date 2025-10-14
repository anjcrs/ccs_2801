import 'package:flutter/material.dart';

class AddCard1 extends StatelessWidget {
  const AddCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Card(
                child: Image.asset('assets/welcome1.png'), 
                elevation: 10,
                shadowColor: Colors.blue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Text('1',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight:
                          FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Text('1',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight:
                            FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Text('1',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight:
                            FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}

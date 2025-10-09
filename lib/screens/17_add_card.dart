import 'package:flutter/material.dart';

// You may use the same image from the file #16

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset('assets/images/signin.png'),
        ),
      ),
    );
  }
}

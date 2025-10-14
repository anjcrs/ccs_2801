import 'package:flutter/material.dart';

class AddImage1 extends StatelessWidget {
  const AddImage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Image.asset('assets/welcome1.png')),
    );
  }
}

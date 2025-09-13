import 'package:flutter/material.dart';

class AddScaffold extends StatelessWidget {
  const AddScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.green,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

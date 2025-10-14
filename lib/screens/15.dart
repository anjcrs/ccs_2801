import 'package:flutter/material.dart';

class AddButtons1 extends StatelessWidget {
  const AddButtons1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      showDialog(context: context, builder: (context) => AlertDialog(
                        title: Text("Text Button"),
                        content: Text('The text button was clicked.'),
                      ),
                      );
                    }, child: Text("Text Button"),
                ),
                OutlinedButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context) =>
                      AlertDialog(title: Text("Outlined Button"),
                      ),
                    );
                  }, child: Text("Outlined Button",),
                ),
              ],
            ),
          )
      ),
    );
  }
}

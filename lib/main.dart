import 'package:ccs_2801/screens/10_add_appbar.dart';
import 'package:ccs_2801/screens/11_add_bottom_appbar.dart';
import 'package:ccs_2801/tests/first_page.dart';
import 'package:ccs_2801/tests/main_page.dart';
import 'package:flutter/material.dart';
import 'package:ccs_2801/screens/01_add_dartfile.dart';
import 'package:ccs_2801/screens/02_add_container.dart';
import 'package:ccs_2801/screens/03_add_text.dart';
import 'package:ccs_2801/screens/04_add_scaffold.dart';
import 'package:ccs_2801/screens/05_add_textcontainer.dart';
import 'package:ccs_2801/screens/06_add_column.dart';
import 'package:ccs_2801/screens/07_add_row.dart';
import 'package:ccs_2801/screens/08_add_columnrow.dart';
import 'package:ccs_2801/screens/09_activity1.dart';
import 'package:ccs_2801/screens/13_add_bottom_navigationbar2.dart' show AddBottomNavigationBar2;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        'first_page' : (context) => HomePage(),
      },
    );
  }
}

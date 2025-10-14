import 'package:ccs_2801/screens/14_prelim_examm.dart';
import 'package:ccs_2801/screens/15_add_buttons.dart';
import 'package:ccs_2801/screens/16_add_image.dart';
import 'package:ccs_2801/screens/17_add_card.dart';
import 'package:ccs_2801/screens/18_add_snackbar.dart';
import 'package:ccs_2801/screens/test6.dart';
import 'package:ccs_2801/screens/test9.dart';
import 'package:flutter/material.dart';
import 'package:ccs_2801/tests/first_page.dart';
import 'package:ccs_2801/tests/main_page.dart';
import 'package:ccs_2801/tests/second_page.dart';

import 'package:ccs_2801/screens/01_add_dartfile.dart';
import 'package:ccs_2801/screens/02_add_container.dart';
import 'package:ccs_2801/screens/03_add_text.dart';
import 'package:ccs_2801/screens/04_add_scaffold.dart';
import 'package:ccs_2801/screens/05_add_textcontainer.dart';
import 'package:ccs_2801/screens/06_add_column.dart';
import 'package:ccs_2801/screens/07_add_row.dart';
import 'package:ccs_2801/screens/08_add_columnrow.dart';
import 'package:ccs_2801/screens/09_activity1.dart';
import 'package:ccs_2801/screens/10_add_appbar.dart';
import 'package:ccs_2801/screens/11_add_bottom_appbar.dart';
import 'package:ccs_2801/screens/14_prelim_exam1.dart';
import 'package:ccs_2801/screens/13_add_bottom_navigationbar2.dart'
    show AddBottomNavigationBar2;

import 'package:ccs_2801/screens/test5.dart';


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

      home: const AddCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}













// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ccs_2801/tests/main_page.dart';
// import 'MyCPU/main_page.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CPU App',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//         // Set Lexend as the default font for the entire app
//         textTheme: GoogleFonts.lexendTextTheme(
//           Theme
//               .of(context)
//               .textTheme,
//         ),
//         // Also set it for app bar text theme
//         appBarTheme: AppBarTheme(
//           titleTextStyle: GoogleFonts.lexend(
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//             color: Colors.black,
//           ),
//         ),
//         // Set it for bottom navigation bar
//         bottomNavigationBarTheme: BottomNavigationBarThemeData(
//           selectedLabelStyle: GoogleFonts.lexend(
//             fontSize: 12,
//             fontWeight: FontWeight.w500,
//           ),
//           unselectedLabelStyle: GoogleFonts.lexend(
//             fontSize: 12,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//       home: const MainPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

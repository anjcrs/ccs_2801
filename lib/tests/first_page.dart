// import 'package:ccs_2801/screens/13_add_bottom_navigationbar2.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _Homepage();
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF0c71c3),
//       appBar: AppBar(
//         title: Text('Central Philippine University'),
//         centerTitle: true,
//         actions: <Widget>[
//           Icon(Icons.person_2_rounded),
//         ],
//         backgroundColor: Color(0xFFe1ad3f),
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       drawer: Drawer(
//         backgroundColor: Color(0xFF9a2223),
//         shadowColor: Color(0xFFe1ad3f),
//         child: Column(
//           children: [
//             DrawerHeader(
//               child: Icon(
//                   Icons.school,
//               size: 40,
//               color: Colors.orangeAccent)
//             ),
//           ],
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.center,
//
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem> [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//         BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
//         BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Users"),
//         ],
//         currentIndex: _selectedIndex,
//       ),
//     );
//   }
// }

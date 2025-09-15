import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';
import 'school_page.dart';
import 'settings_page.dart';
import 'users_page.dart';
import 'info_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of screens for bottom navigation
  final List<Widget> _screens = [
    const HomeScreen(),
    const SchoolPage(),
    const SettingsPage(),
    const UsersPage(),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Function to handle drawer navigation
  void _navigateToPage(Widget page) {
    Navigator.of(context).pop(); // Close drawer first
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Function to handle logout
  void _handleLogout() {
    Navigator.of(context).pop(); // Close drawer
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Logout',
            style: GoogleFonts.lexend(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Are you sure you want to logout?',
            style: GoogleFonts.lexend(),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: GoogleFonts.lexend(),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Logged out successfully!',
                      style: GoogleFonts.lexend(),
                    ),
                  ),
                );
              },
              child: Text(
                'Logout',
                style: GoogleFonts.lexend(),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c71c3),
      appBar: AppBar(
        title: Text(
          'Central Philippine University',
          style: GoogleFonts.lexend(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFe1ad3f),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF9a2223),
        child: Column(
          children: [
            // Drawer Header
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFe1ad3f),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.school,
                    size: 60,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'CPU App',
                    style: GoogleFonts.lexend(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            // Drawer Items
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.school,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'School',
                      style: GoogleFonts.lexend(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () => _navigateToPage(const SchoolPage()),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'Info',
                      style: GoogleFonts.lexend(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () => _navigateToPage(const InfoPage()),
                  ),
                  const Spacer(),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'Logout',
                      style: GoogleFonts.lexend(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onTap: _handleLogout,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFe1ad3f),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: _onBottomNavTapped,
        selectedLabelStyle: GoogleFonts.lexend(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.lexend(
          fontWeight: FontWeight.w400,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Users',
          ),
        ],
      ),
    );
  }
}
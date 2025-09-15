import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  bool _soundEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c71c3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Settings Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFe1ad3f),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Settings Options
              Expanded(
                child: ListView(
                  children: [
                    // Notifications Section
                    _buildSectionHeader('Notifications'),
                    _buildSwitchTile(
                      icon: Icons.notifications,
                      title: 'Push Notifications',
                      subtitle: 'Receive app notifications',
                      value: _notificationsEnabled,
                      onChanged: (bool value) {
                        setState(() {
                          _notificationsEnabled = value;
                        });
                      },
                    ),

                    const SizedBox(height: 20),

                    // Appearance Section
                    _buildSectionHeader('Appearance'),
                    _buildSwitchTile(
                      icon: Icons.dark_mode,
                      title: 'Dark Mode',
                      subtitle: 'Enable dark theme',
                      value: _darkModeEnabled,
                      onChanged: (bool value) {
                        setState(() {
                          _darkModeEnabled = value;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              value ? 'Dark mode enabled!' : 'Dark mode disabled!',
                            ),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 20),

                    // Sound Section
                    _buildSectionHeader('Sound'),
                    _buildSwitchTile(
                      icon: Icons.volume_up,
                      title: 'Sound Effects',
                      subtitle: 'Enable app sounds',
                      value: _soundEnabled,
                      onChanged: (bool value) {
                        setState(() {
                          _soundEnabled = value;
                        });
                      },
                    ),

                    const SizedBox(height: 20),

                    // Account Section
                    _buildSectionHeader('Account'),
                    _buildTile(
                      icon: Icons.person,
                      title: 'Profile Settings',
                      subtitle: 'Edit your profile information',
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Profile settings coming soon!')),
                        );
                      },
                    ),
                    _buildTile(
                      icon: Icons.lock,
                      title: 'Change Password',
                      subtitle: 'Update your account password',
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Password change coming soon!')),
                        );
                      },
                    ),

                    const SizedBox(height: 20),

                    // Help Section
                    _buildSectionHeader('Help & Support'),
                    _buildTile(
                      icon: Icons.help,
                      title: 'Help Center',
                      subtitle: 'Get help and support',
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Help center coming soon!')),
                        );
                      },
                    ),
                    _buildTile(
                      icon: Icons.info,
                      title: 'About App',
                      subtitle: 'Version 1.0.0',
                      onTap: () {
                        _showAboutDialog();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSwitchTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SwitchListTile(
        secondary: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF9a2223),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        value: value,
        onChanged: onChanged,
        activeColor: const Color(0xFFe1ad3f),
      ),
    );
  }

  Widget _buildTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF9a2223),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black54,
          size: 16,
        ),
        onTap: onTap,
      ),
    );
  }

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'About CPU App',
            style: GoogleFonts.lexend(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Central Philippine University Mobile App\n\n'
                'Version: 1.0.0\n'
                'Developer: CPU Development Team\n\n'
                'This app helps students access university services and information easily.',
            style: GoogleFonts.lexend(),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'OK',
                style: GoogleFonts.lexend(),
              ),
            ),
          ],
        );
      },
    );
  }
}
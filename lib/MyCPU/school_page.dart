import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c71c3),
      appBar: AppBar(
        title: const Text(
          'School Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFe1ad3f),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // School Logo and Name
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
                child: Column(
                  children: [
                    Icon(
                      Icons.school,
                      size: 80,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Central Philippine University',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Excellence in Education Since 1905',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // School Information Cards
              Expanded(
                child: ListView(
                  children: [
                    _buildInfoCard(
                      icon: Icons.location_on,
                      title: 'Campus Location',
                      content: 'Jaro, Iloilo City\nPhilippines',
                      color: const Color(0xFF9a2223),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoCard(
                      icon: Icons.phone,
                      title: 'Contact Information',
                      content: 'Phone: +63 33 329 1971\nEmail: info@cpu.edu.ph',
                      color: const Color(0xFF9a2223),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoCard(
                      icon: Icons.groups,
                      title: 'Student Population',
                      content: 'Over 15,000 students\nVarious programs and courses',
                      color: const Color(0xFF9a2223),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoCard(
                      icon: Icons.auto_awesome,
                      title: 'Our Mission',
                      content: 'To provide quality Christian education that develops the whole person',
                      color: const Color(0xFF9a2223),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoCard(
                      icon: Icons.emoji_events,
                      title: 'Achievements',
                      content: 'Autonomous Status\nLevel IV Accreditation\nISO 9001:2015 Certified',
                      color: const Color(0xFF9a2223),
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

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String content,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  content,
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
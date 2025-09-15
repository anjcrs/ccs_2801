import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Welcome Section
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
                const Icon(
                  Icons.school,
                  size: 50,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome to CPU!',
                  style: GoogleFonts.lexend(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Central Philippine University',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Quick Actions Section
          Text(
            'Quick Actions',
            style: GoogleFonts.lexend(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 15),

          // Action Cards Row
          Row(
            children: [
              Expanded(
                child: _buildActionCard(
                  icon: Icons.book,
                  title: 'Courses',
                  color: const Color(0xFF9a2223),
                  onTap: () {
                    // Add functionality later
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildActionCard(
                  icon: Icons.calendar_today,
                  title: 'Schedule',
                  color: const Color(0xFF9a2223),
                  onTap: () {
                    // Add functionality later
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: _buildActionCard(
                  icon: Icons.grade,
                  title: 'Grades',
                  color: const Color(0xFF9a2223),
                  onTap: () {
                    // Add functionality later
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildActionCard(
                  icon: Icons.announcement,
                  title: 'News',
                  color: const Color(0xFF9a2223),
                  onTap: () {
                    // Add functionality later
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Information Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Student Information',
                  style: GoogleFonts.lexend(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                _buildInfoRow('Student ID:', '2024-01234'),
                _buildInfoRow('Program:', 'Computer Science'),
                _buildInfoRow('Year Level:', '2nd Year'),
                _buildInfoRow('Status:', 'Regular'),
              ],
            ),
          ),

          const SizedBox(height: 100), // Extra space for bottom nav
        ],
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.lexend(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Text(
            label,
            style: GoogleFonts.lexend(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            value,
            style: GoogleFonts.lexend(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
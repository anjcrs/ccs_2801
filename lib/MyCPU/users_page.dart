import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  final List<Map<String, String>> students = const [
    {
      'name': 'Juan Dela Cruz',
      'id': '2024-01234',
      'program': 'Computer Science',
      'year': '2nd Year'
    },
    {
      'name': 'Maria Santos',
      'id': '2024-01235',
      'program': 'Information Technology',
      'year': '3rd Year'
    },
    {
      'name': 'Pedro Garcia',
      'id': '2024-01236',
      'program': 'Business Administration',
      'year': '1st Year'
    },
    {
      'name': 'Ana Rodriguez',
      'id': '2024-01237',
      'program': 'Nursing',
      'year': '4th Year'
    },
    {
      'name': 'Carlos Lopez',
      'id': '2024-01238',
      'program': 'Engineering',
      'year': '2nd Year'
    },
    {
      'name': 'Sofia Martinez',
      'id': '2024-01239',
      'program': 'Education',
      'year': '3rd Year'
    },
  ];

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
              // Users Header
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
                    const Icon(
                      Icons.people,
                      size: 40,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Students',
                      style: GoogleFonts.lexend(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Student Count
              Text(
                'Total Students: ${students.length}',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

              // Students List
              Expanded(
                child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    final student = students[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(16),
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
                      child: Row(
                        children: [
                          // Student Avatar
                          CircleAvatar(
                            backgroundColor: const Color(0xFF9a2223),
                            radius: 25,
                            child: Text(
                              student['name']![0],
                              style: GoogleFonts.lexend(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Student Info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  student['name']!,
                                  style: GoogleFonts.lexend(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'ID: ${student['id']}',
                                  style: GoogleFonts.lexend(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  '${student['program']} - ${student['year']}',
                                  style: GoogleFonts.lexend(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Status Indicator
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Active',
                              style: GoogleFonts.lexend(
                                fontSize: 12,
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome, Renjie!',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1), // Adjusted height
            _buildProgressJumbotron(),
            SizedBox(height: 20),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  crossAxisSpacing: 10.0, // Spacing between columns
                  mainAxisSpacing: 10.0, // Spacing between rows
                  childAspectRatio: 1, // Aspect ratio of each item
                ),
                children: [
                  _buildMenuItem(
                    context,
                    icon: Icons.announcement,
                    title: 'Announce',
                    color: Colors.blue, // Kontras untuk informasi
                    onTap: () {
                      // TODO: Navigate to Announcements screen
                    },
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.assignment,
                    title: 'Assignments',
                    color: Colors.red, // Kontras untuk urgensi
                    onTap: () {
                      // TODO: Navigate to Assignments screen
                    },
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.calendar_today,
                    title: 'Calendar',
                    color: Colors.green, // Kontras untuk terorganisir
                    onTap: () {
                      // TODO: Navigate to Academic Calendar screen
                    },
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.book,
                    title: 'Course',
                    color: Colors.purple, // Kontras untuk akademis
                    onTap: () {
                      // TODO: Navigate to Study Materials screen
                    },
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.forum,
                    title: 'Form',
                    color: Colors.orange, // Kontras untuk aktif
                    onTap: () {
                      // TODO: Navigate to Discussion Forum screen
                    },
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.more_horiz,
                    title: 'More',
                    color: Colors.grey, // Kontras untuk tambahan
                    onTap: () {
                      // TODO: Navigate to More screen
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressJumbotron() {
    // Example progress data
    final double progressPercentage =
        88.0; // Example percentage of tasks completed

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.greenAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Task Progress',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          LinearProgressIndicator(
            value: progressPercentage / 100,
            backgroundColor: Colors.white54,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            '${progressPercentage.toStringAsFixed(1)}% Completed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap,
      required Color color}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100, // Width of the circle
        height: 100, // Height of the circle
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: color.withOpacity(0.2),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              SizedBox(height: 8),
              Text(title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12, color: color, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}

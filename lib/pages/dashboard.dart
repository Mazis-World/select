import 'package:flutter/material.dart';
import 'package:select/services/authservice.dart';

class Dashboard extends StatelessWidget {
  final AuthService authService;

  Dashboard({required this.authService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dating App Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings page
            },
          ),
          IconButton(
            icon: Icon(Icons.logout), // Add the logout icon
            onPressed: () {

              authService.signOut(); // Call the signOut method from your AuthService
              Navigator.pushReplacementNamed(context, '/');// Navigate to the login page after logout
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Profile Card
          Container(
            height: 400,
            width: 300,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                // Profile Image
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile_image.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                ),
                // Profile Info
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name, Age',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Sections
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                // Section Title
                Text(
                  'Featured Profiles',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Featured Profiles
                // You can add a list of featured profiles here
                // Each profile can be a clickable widget
                SizedBox(height: 16),
                // Section Title
                Text(
                  'Messages',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Message List
                // You can display a list of messages and conversations here
              ],
            ),
          ),
        ],
      ),
    );
  }
}

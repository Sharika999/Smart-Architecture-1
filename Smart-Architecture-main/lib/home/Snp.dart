import 'package:flutter/material.dart';
import 'package:smart_architecture/home/screens/base_screen.dart';

void main() {
  runApp(sett());
}

class sett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BaseScreen(),
                ),
              );
            },
          ),
        
          title: Text('Settings and Preferences',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Customize Settings'),
            onTap: () {
              // Navigate to customize settings page
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              // Navigate to profile page
            },
          ),
          ListTile(
            title: Text('Upload Picture'),
            onTap: () {
              // Implement upload picture functionality
            },
          ),
          ListTile(
            title: Text('Show 5-star Rated Architects'),
            onTap: () {
              // Filter and show 5-star rated architects
            },
          ),
          ListTile(
            title: Text('Show 4-star Rated Architects'),
            onTap: () {
              // Filter and show 4-star rated architects
            },
          ),
          // Add more settings options as needed
        ],
      ),
    );
  }
}

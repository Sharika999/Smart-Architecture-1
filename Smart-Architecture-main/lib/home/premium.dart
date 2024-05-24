
import 'package:flutter/material.dart';
import 'package:smart_architecture/home/screens/base_screen.dart';

void main() {
  runApp(pre());
}

class pre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UpgradeToPremiumPage(),
    );
  }
}

class UpgradeToPremiumPage extends StatelessWidget {
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
        
          title: Text('Upgrade to Premium',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Premium Offers'),
            onTap: () {
              // Navigate to premium offers page
            },
          ),
          // Add premium offers
          ElevatedButton(
            onPressed: () {
              // Implement functionality for 1 week plan
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // Brown color
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '1 Week Plan - ₹599',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement functionality for 1 month plan
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // Brown color
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '1 Month Plan - ₹799',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement functionality for 3 months plan
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // Brown color
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '3 Months Plan - ₹1599',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Subscription option
          ListTile(
            title: Text('Subscription'),
            onTap: () {
              // Navigate to subscription page
            },
          ),
          // Add subscription options
          ElevatedButton(
            onPressed: () {
              // Implement functionality for first subscription option
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // Brown color
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '1) - Basic',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement functionality for second subscription option
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // Brown color
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '2) - Standard',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Add more premium offers or subscription options as needed
          ElevatedButton(
            onPressed: () {
              // Implement functionality for second subscription option
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // Brown color
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '3) - Business',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

        ],
      ),
    );
  }
}





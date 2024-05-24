

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_architecture/home/chat.dart';
import 'package:smart_architecture/home/screens/featuerd_screen.dart';
import 'package:smart_architecture/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                border: Border.symmetric(),
                color: Color.fromARGB(255, 183, 179, 179),
              ),
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                radius: 150,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            ListBody(
              children: [
                Padding(padding: EdgeInsets.only(left: 100, top: 10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Home',
                        style: TextStyle(
                            color: Color.fromARGB(255, 43, 45, 47), fontSize: 18),
                      ),
                      onTap: () {
                        
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Profile',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 48, 50, 51), fontSize: 18),
                      ),
                      onTap: () {
                        
                      },
                    ),
                   
                    
                    ListTile(
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            color: Color.fromARGB(255, 47, 48, 48), fontSize: 18),
                      ),
                      onTap: () {
                        
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
          child: GNav(
            backgroundColor: Colors.black,color: Color.fromARGB(255, 125, 67, 25),activeColor: Color.fromARGB(255, 236, 187, 87),
            tabBackgroundColor: Colors.grey.shade900,
            gap: 8,padding: EdgeInsets.all(16),
            tabs: [
              GButton(icon: Icons.home,text: 'Home',),
              GButton(icon: Icons.camera,text: 'See',onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            }),
              GButton(icon: Icons.chat_rounded,text: 'Chat',onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Cahc(),
                ),
              );
            },),
              GButton(icon: Icons.settings,text: 'Settings',),
            ],
          ),
        ),
      ),
    );
  }
}

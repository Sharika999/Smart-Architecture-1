/*
import 'dart:ui';

import 'package:ar_room_decor/home/models/category.dart';
import 'package:ar_room_decor/home/screens/course_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 114, 42, 24),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          child: Column(
            children: const [
              AppBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CategoryCard(
              category: categoryList[index],
            ),
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CourseScreen(),
        ),
      ),
      child: ClipRRect(
        child: Container(
          height: 120,
          width: 120, // Adjust height as needed
          color: Colors.transparent,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.13)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 66, 28, 13).withOpacity(0.55),
                        Color.fromARGB(255, 74, 45, 45).withOpacity(0.5),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 500,),
                        Center(child: Text(category.name,style: TextStyle(
                          fontSize: 22, 
                          color: Color.fromARGB(255, 207, 206, 206), 
                        ),)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color.fromARGB(255, 234, 130, 86),
            Color.fromARGB(255, 62, 22, 5),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,\nGood Morning",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ElevatedButton(
                child: Icon(Icons.notifications),
                style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor: Colors.transparent),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}*/
import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_architecture/home/3d.dart';
import 'package:smart_architecture/home/Snp.dart';
import 'package:smart_architecture/home/designnew.dart';
import 'package:smart_architecture/home/materials.dart';
import 'package:smart_architecture/home/models/category.dart';
import 'package:smart_architecture/home/premium.dart';
import 'package:smart_architecture/home/screens/insp.dart';

// Define the pages to navigate to


// Main FeaturedScreen widget
class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 114, 42, 24),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          child: Column(
            children: const [
              AppBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CategoryCard(
              category: categoryList[index],
            ),
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToPage() {
      // Navigate to different pages based on the category
      if (category.name == 'Renovate') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => room1(),
          ),
        );
      } else if (category.name == 'My Projects') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => des(),
          ),
        );
      } else if (category.name == 'Browse Inspiration') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => insp(),
          ),
        );
        
      }else if (category.name == 'Materials') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => mat(),
          ),
        );
        
      }else if (category.name == 'Settings & preferences') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => sett(),
          ),
        );
      }else if (category.name == 'Upgrade to premium') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pre(),
          ),
        );
      }
      // Add more conditions for other categories if needed
    }

    return GestureDetector(
      onTap: navigateToPage,
      child: ClipRRect(
        child: Container(
          height: 120,
          width: 120,
          color: Colors.transparent,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.13)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 66, 28, 13).withOpacity(0.55),
                        Color.fromARGB(255, 74, 45, 45).withOpacity(0.5),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 500,),
                        Center(child: Text(category.name,style: TextStyle(
                          fontSize: 22, 
                          color: Color.fromARGB(255, 207, 206, 206), 
                        ),)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color.fromARGB(255, 234, 130, 86),
            Color.fromARGB(255, 62, 22, 5),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,\nGood Morning",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ElevatedButton(
                child: Icon(Icons.notifications),
                style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor: Colors.transparent),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

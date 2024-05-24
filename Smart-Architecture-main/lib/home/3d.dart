import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:smart_architecture/home/screens/base_screen.dart';

class room1 extends StatefulWidget {
  const room1({Key? key}) : super(key: key);

  @override
  _SpaceState createState() => _SpaceState();
}

class _SpaceState extends State<room1> {
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
        
          title: Text('Renovation',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: Center(
        child: ModelViewer(
          src: 'assets/my_room.glb',
          alt: "A 3D model",
          autoPlay: true,
          autoRotate: false,
          cameraControls: true,
          backgroundColor: Color.fromARGB(255, 235, 175, 133), // Set your desired background color here
        ),
      ),
    );
  }
}

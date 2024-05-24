import 'package:flutter/material.dart';
import 'standard/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 81, 47, 6),
          title: const Text(
            "Smart Architecture",
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //backgroundColor: Colors.black,
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RoundedButton(
                    colour: Color.fromARGB(255, 92, 74, 12),
                    title: 'Log In',
                    onPressed: () {
                      Navigator.pushNamed(context, 'login_screen');
                    },
                  ),
                  RoundedButton(
                      colour: Color.fromARGB(255, 197, 157, 37),
                      title: 'Register',
                      onPressed: () {
                        Navigator.pushNamed(context, 'registration_screen');
                      }),
                ]),
          ),
        ));
  }
}
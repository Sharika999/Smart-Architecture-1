
//import 'package:education_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:smart_architecture/home/screens/base_screen.dart';

//import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//import 'main.dart';
//import 'menu.dart';

class Cahc extends StatelessWidget {
  const Cahc({super.key});

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
        
          title: Text('Chat',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: WebView(
        initialUrl:
            'ADD YOUR CHAT BOT LOCAL URL',//http://172.16.9.90:8501
        javascriptMode: JavascriptMode.unrestricted, 
        onWebViewCreated: (WebViewController webViewController) {
          
        },
        onPageStarted: (String url) {
          
        },
        onPageFinished: (String url) {
          
        },
        onWebResourceError: (WebResourceError error) {
          
          print("Web resource error: $error");
        },
      ),
    );
  }
}
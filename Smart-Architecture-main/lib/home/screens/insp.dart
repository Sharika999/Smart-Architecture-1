//import 'package:education_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:smart_architecture/home/screens/base_screen.dart';

//import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//import 'main.dart';
//import 'menu.dart';

class insp extends StatelessWidget {
  const insp({super.key});

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
        
          title: Text('Design',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: WebView(
        initialUrl:
            'https://www.elledecor.com/',//http://172.16.9.90:8501
        javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
        onWebViewCreated: (WebViewController webViewController) {
          // You can use the webViewController to interact with the WebView
        },
        onPageStarted: (String url) {
          // Handle page loading started
        },
        onPageFinished: (String url) {
          // Handle page loading finished
        },
        onWebResourceError: (WebResourceError error) {
          // Handle web resource errors
          print("Web resource error: $error");
        },
      ),
    );
  }}
// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides the basic app structure and theme
    return MaterialApp(
      // Hides the debug banner
      debugShowCheckedModeBanner: false,
      
      // 'home' is the main screen of the app
      home: Center(
        // Center is a widget that centers its child
        child: Text(
          'Hello, Startup!',
          // style the text
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}
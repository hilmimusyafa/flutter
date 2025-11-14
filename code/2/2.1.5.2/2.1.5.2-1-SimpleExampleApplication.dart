// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyStartupApp());
}

// This is the root widget of the application.
class MyStartupApp extends StatelessWidget {
  const MyStartupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Startup',
      debugShowCheckedModeBanner: false,
      // Define the overall theme for the app
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      // The first screen to show
      home: const LoginPage(),
    );
  }
}

// This widget represents the Login Page screen
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the standard screen layout
    return Scaffold(
      // The top bar of the screen
      appBar: AppBar(
        title: const Text('Welcome to Startup'),
        backgroundColor: Colors.indigo[600],
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      // The main content of the screen
      body: Center(
        child: Column(
          // Center the content vertically
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // A placeholder text
            const Text(
              'Login Page Placeholder',
              style: TextStyle(fontSize: 22),
            ),
            
            // Add some spacing
            const SizedBox(height: 20),
            
            // A placeholder button
            ElevatedButton(
              onPressed: () {
                // Handle login tap later
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
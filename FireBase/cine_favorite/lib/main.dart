import 'package:flutter/material.dart';
import 'package:your_app/login_screen.dart'; // Create this file later
// Import other screen files here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark, // Using dark theme to match your design
      ),
      home: const LoginScreen(), // Start with the Login screen
    );
  }
}
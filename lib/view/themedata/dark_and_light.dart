// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // Initially, set the theme mode to light

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final Function toggleTheme;
  const MyHomePage({super.key, required this.toggleTheme});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Toggle'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () =>
                widget.toggleTheme(), // Toggle theme mode when pressed
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'ArslaN',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

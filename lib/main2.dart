import 'package:designing_screen/view/themedata/dark_and_light.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      // Toggle between light and dark theme mode
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dark and Light Mode Example',
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.amber)), // Light theme settings
      darkTheme: ThemeData.dark(), // Dark theme settings
      themeMode: _themeMode, // Current theme mode
      home: MyHomePage(toggleTheme: _toggleTheme),

      // debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   textTheme: const TextTheme(
      //       bodySmall: TextStyle(color: Colors.white, fontSize: 24),
      //       bodyMedium: TextStyle(color: Colors.white, fontSize: 24)),
      //   iconTheme: const IconThemeData(color: Colors.white, size: 24),
      //   useMaterial3: true,
      //   colorScheme: ColorScheme.fromSeed(
      //     background: Colors.blue.shade800,

      //     seedColor: Colors.blue, // Replace with your desired primary color
      //   ),
      // ),
      // home: const FutureFunctionScreen(),
    );
  }
}

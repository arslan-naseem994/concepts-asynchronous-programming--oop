import 'package:flutter/material.dart';
import 'dart:async'; // Import Dart's async library

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  FutureScreenState createState() => FutureScreenState();
}

class FutureScreenState extends State<FutureScreen> {
  String _userData = 'Fetching user data...';

  // Simulate a network request to fetch user data
  Future<String> fetchUserData() async {
    // Pretend we fetch data from the internet with a 2-second delay
    await Future.delayed(const Duration(seconds: 2));
    return 'Arslan'; // This would normally be data from a server
  }

  @override
  void initState() {
    super.initState();
    // Call the async function and update the state when the data arrives
    fetchUserData().then((data) {
      setState(() {
        _userData = data;
      });
    }).catchError((error) {
      setState(() {
        _userData = 'Failed to fetch user data';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async Example'),
      ),
      body: Center(
        child: Text(_userData),
      ),
    );
  }
}

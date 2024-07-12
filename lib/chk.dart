import 'package:flutter/material.dart';
import 'dart:async'; // Import Dart's async library

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  String _userData = 'Fetching user data...';

  // Simulate a network request to fetch user data
  Future<String> fetchUserData() async {
    // Pretend we fetch data from the internet with a 2-second delay
    await Future.delayed(const Duration(seconds: 2));
    return 'John Doe'; // This would normally be data from a server
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

import 'package:flutter/material.dart';

class SingleChildScrollScreen extends StatelessWidget {
  const SingleChildScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keyboard Avoidance Example')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(hintText: 'Enter your username'),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(hintText: 'Enter your password'),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login or other actions
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

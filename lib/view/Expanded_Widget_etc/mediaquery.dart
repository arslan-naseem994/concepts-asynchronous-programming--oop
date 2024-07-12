import 'package:flutter/material.dart';

class MediaQueryScree extends StatelessWidget {
  const MediaQueryScree({super.key});

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

// Container(
//   width: MediaQuery.of(context).size.width,
//   child: Text('This container fills the screen width.'),
// )

// Padding(
//   padding: MediaQuery.of(context).padding,
//   child: Text('This text is not obscured by system UI. safearea alternative'),
// )

// Orientation orientation = MediaQuery.of(context).orientation;
//     if (orientation == Orientation.portrait) {
//       return const Scaffold(
//         backgroundColor: Colors.pink,
//       );
//     } else {
//       return const Scaffold(
//         backgroundColor: Colors.yellow,
//       );
//     }


// Padding(
//         padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
//         child: const Text('This padding is 5% of the screen width.'),
//       ),







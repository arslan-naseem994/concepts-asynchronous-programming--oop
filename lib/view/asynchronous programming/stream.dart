import 'package:flutter/material.dart';

class StreamScreen extends StatefulWidget {
  const StreamScreen({super.key});

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  Stream<int> countdown(int from) async* {
    for (int i = from; i >= 0; i--) {
      await Future.delayed(
          const Duration(milliseconds: 250)); // Wait for a second
      yield i; // Emit the current countdown number
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Use StreamBuilder to listen to the countdown Stream
        child: StreamBuilder<int>(
          stream: countdown(25), // Countdown from 10
          builder: (context, snapshot) {
            // Check if the snapshot has data
            if (snapshot.hasData) {
              return Text(
                'Countdown: ${snapshot.data}', // Display the current countdown value
                style: const TextStyle(fontSize: 24),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              // Display when the countdown is finished
              return const Text('Done!', style: TextStyle(fontSize: 24));
            }
          },
        ),
      ),
    );
  }
}

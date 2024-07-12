import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const IntrinsicHeightScreen());
}

class IntrinsicHeightScreen extends StatelessWidget {
  const IntrinsicHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Intrinsic Example')),
        body: Center(
            child: Column(
          children: [
            IntrinsicWidth(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Short'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Tall Button'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Short'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, // Make sure this is uncommented
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Short'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Tall Button'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Short'),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

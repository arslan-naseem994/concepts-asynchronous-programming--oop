import 'package:flutter/material.dart';

class InheritenceScreen extends StatelessWidget {
  const InheritenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inheritance Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inheritance Example'),
        ),
        body: Center(
          child: CustomButton('Tap Me', () {
            print('Button Tapped!');
          }),
        ),
      ),
    );
  }
}

// CustomButton inherits from StatelessWidget
class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const CustomButton(this.label, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(label),
    );
  }
}

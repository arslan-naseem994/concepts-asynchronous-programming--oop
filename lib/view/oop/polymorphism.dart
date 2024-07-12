import 'package:flutter/material.dart';

// A simple abstract class representing a Shape
abstract class Shape {
  // An abstract method to draw the shape
  Widget draw();
}

// A Circle class that extends Shape
class Circle extends Shape {
  @override
  Widget draw() {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
    );
  }
}

// A Square class that extends Shape
class Square extends Shape {
  @override
  Widget draw() {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.red,
      ),
    );
  }
}

// A widget that collects different shapes
class ShapeCollector extends StatelessWidget {
  final List<Shape> shapes = [Circle(), Square()];

  ShapeCollector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Polymorphism Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: shapes.map((shape) => shape.draw()).toList(),
        ),
      ),
    );
  }
}

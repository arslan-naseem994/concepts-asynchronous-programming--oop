import 'package:flutter/material.dart';

class AbstractionScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Abstraction Example')),
        body: Center(
          // Using the abstract widget type but the instance is a concrete implementation
          child: ShapeWidget(ShapeType.circle),
        ),
      ),
    );
  }
}

// An enum to represent the type of shape to draw
enum ShapeType { circle, square }

// An abstract class that defines a widget to draw a shape
abstract class Shape {
  Widget draw();
}

// A concrete implementation of Shape for drawing circles
class Circle extends Shape {
  @override
  Widget draw() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
    );
  }
}

// A concrete implementation of Shape for drawing squares
class Square extends Shape {
  @override
  Widget draw() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}

// A widget that uses Shape abstraction to draw a shape
class ShapeWidget extends StatelessWidget {
  final ShapeType shapeType;

  ShapeWidget(this.shapeType);

  @override
  Widget build(BuildContext context) {
    // Decide which shape to draw based on the shapeType
    Shape shape;
    switch (shapeType) {
      case ShapeType.circle:
        shape = Circle();
        break;
      case ShapeType.square:
        shape = Square();
        break;
      default:
        throw Exception('Unknown shape type');
    }

    return shape.draw();
  }
}

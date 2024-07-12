import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(color: Colors.blue),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.pink),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.greenAccent),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.white),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.black),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.orange),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.purple),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.yellow),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.teal),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.green),
        ),
      ],
    ));
  }
}

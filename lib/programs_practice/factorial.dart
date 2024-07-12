import 'package:flutter/material.dart';

class FactorialScreen extends StatefulWidget {
  const FactorialScreen({super.key});

  @override
  State<FactorialScreen> createState() => _FactorialScreenState();
}

class _FactorialScreenState extends State<FactorialScreen> {
  String answer = '';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    TextEditingController userInput = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Factorial: $answer'),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                controller: userInput,
                decoration: const InputDecoration(hintText: 'Enter a value'),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              ElevatedButton(
                  onPressed: () {
                    answer = execute(int.parse(userInput.text.toString()))
                        .toString();
                    setState(() {});
                  },
                  child: const Center(
                    child: Text('Executee'),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  String execute(int values) {
    int total = 0;
    for (int i = values - 1; i > 0; i--) {
      if (total == 0) {
        total = values * i;
      } else {
        total = total * i;
      }
    }
    return total.toString();
  }
}

// using recursion function

int factorial(int n) {
  if (n < 0) {
    throw ArgumentError('Negative numbers are not allowed.');
  }
  return n <= 1 ? 1 : n * factorial(n - 1);
}

// using increment function
// int factorial(int n) {
//   if (n < 0) {
//     throw ArgumentError('Negative numbers are not allowed.');
//   }
//   int result = 1;
//   for (int i = 2; i <= n; i++) {
//     result *= i;
//   }
//   return result;
// }


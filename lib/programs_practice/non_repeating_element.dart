import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NonRepeatingScreen extends StatefulWidget {
  const NonRepeatingScreen({super.key});

  @override
  State<NonRepeatingScreen> createState() => _NonRepeatingScreenState();
}

class _NonRepeatingScreenState extends State<NonRepeatingScreen> {
  List<int> arrays = [1, 1, 2, 2, 3, 4, 4, 5, 6];
  List<String> names = ['Arslan', 'Arslan', 'Talha', 'Bilal', 'me', 'me'];

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
                onPressed: () {},
                child: const Center(
                  child: Text('Executee'),
                ),
              ),
              Text(
                  textAlign: TextAlign.center,
                  'non_repeating values \n${execute(arrays)}'),
              Text(
                  textAlign: TextAlign.center,
                  'non_repeating values \n${execute2(names)}'),
            ],
          ),
        ),
      ),
    );
  }

  List<int> execute(List<int> values) {
    Map<int, int> mapElementCount = {};
    List<int> newList = [];
    for (int i in values) {
      mapElementCount[i] = (mapElementCount[i] ?? 0) + 1;
    }
    for (int k in values) {
      if (mapElementCount[k] == 1) {
        newList.add(k);
      }
    }
    return newList;
  }

  List<String> execute2(List<String> values) {
    Map<String, int> mapElementCount = {};
    List<String> newList = [];
    for (String i in values) {
      mapElementCount[i] = (mapElementCount[i] ?? 0) + 1;
    }
    for (String k in values) {
      if (mapElementCount[k] == 1) {
        newList.add(k);
      }
    }
    return newList;
  }
}

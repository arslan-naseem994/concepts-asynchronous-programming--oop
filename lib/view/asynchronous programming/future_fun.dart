import 'package:flutter/material.dart';

class FutureFunctionScreen extends StatefulWidget {
  const FutureFunctionScreen({super.key});

  @override
  State<FutureFunctionScreen> createState() => _FutureFunctionScreenState();
}

class _FutureFunctionScreenState extends State<FutureFunctionScreen> {
  List<int> arrays = [1, 1, 2, 2, 3, 4, 4, 5, 6];

  Future fetchdata(List<int> lists) async {
    await Future.delayed(const Duration(seconds: 2));
    return lists;
  }

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
                onPressed: () async {
                  debugPrint(await fetchdata(arrays));
                  setState(() {});
                },
                child: const Center(
                  child: Text('Executee'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

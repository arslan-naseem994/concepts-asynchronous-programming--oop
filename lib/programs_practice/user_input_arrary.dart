import 'package:flutter/material.dart';

class UserInputArrayScreen extends StatefulWidget {
  const UserInputArrayScreen({super.key});

  @override
  State<UserInputArrayScreen> createState() => _UserInputArrayScreenState();
}

class _UserInputArrayScreenState extends State<UserInputArrayScreen> {
  List<int> userInputArray = [];
  int total = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    TextEditingController userInput = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
              onPressed: () {
                userInputArray.clear();
                total = 0;
                setState(() {});
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    TextFormField(
                      controller: userInput,
                      decoration: const InputDecoration(
                          hintText: 'Enter a integer value'),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        try {
                          userInputArray.add(
                            int.parse(userInput.text),
                          );
                          total += int.parse(userInput.text);
                        } catch (e) {
                          debugPrint(
                            e.toString(),
                          );
                        }
                        setState(() {});
                      },
                      child: const Center(
                        child: Text('Executee'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Text('Total: $total'),
              ),
              const Expanded(
                flex: 1,
                child: Text('UserArrayOutput'),
              ),
              Expanded(
                flex: 4,
                child: ListView.builder(
                  itemCount: userInputArray.length,
                  itemBuilder: ((context, index) {
                    return Text(userInputArray[index].toString());
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//   String execute(int values) {
//  return null;
//   }
}

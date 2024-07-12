import 'package:flutter/material.dart';

abstract class Repository {
  Future<List<String>> fetchData();
}

class UserRepo extends Repository {
  @override
  Future<List<String>> fetchData() async {
    // Imagine that this is where you'd get data from a database or a network.
    return ['Alice', 'Bob', 'Charlie'];
  }
}

// Usage inside a Flutter widget
class UserList extends StatelessWidget {
  final Repository repo;

  const UserList({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: repo.fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            children: snapshot.data!.map((user) => Text(user)).toList(),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}

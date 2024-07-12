// Import the Flutter material package
import 'package:flutter/material.dart';

// Define the BankAccount class
class BankAccount {
  double _balance; // Private variable for encapsulation

  BankAccount(this._balance);

  // Getter for balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method to withdraw money
  bool withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      return true;
    }
    return false;
  }
}

// A simple Flutter application to interact with the BankAccount class

class BankHomePage extends StatefulWidget {
  const BankHomePage({super.key});

  @override
  BankHomePageState createState() => BankHomePageState();
}

class BankHomePageState extends State<BankHomePage> {
  final BankAccount _account = BankAccount(100.0); // Starting balance of $100

  void _depositMoney() {
    setState(() {
      _account.deposit(50.0); // Deposit $50 for demonstration
    });
  }

  void _withdrawMoney() {
    setState(() {
      _account.withdraw(25.0); // Withdraw $25 for demonstration
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Account Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Balance: \$${_account.balance.toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: _depositMoney,
              child: const Text('Deposit \$50'),
            ),
            ElevatedButton(
              onPressed: _withdrawMoney,
              child: const Text('Withdraw \$25'),
            ),
          ],
        ),
      ),
    );
  }
}

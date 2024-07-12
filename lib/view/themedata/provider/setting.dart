import 'package:designing_screen/view/themedata/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeNotifier = Provider.of<ThemeNotifier>(context, listen: true);
    print('scaffold');
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'ArslaN',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Consumer<ThemeNotifier>(
              builder: ((context, value, child) {
                print('buttons');
                return Switch(
                  value: value.isDarkMode,
                  onChanged: (newValue) {
                    value.toggleTheme();
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

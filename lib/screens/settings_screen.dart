import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: const Color(0xffE0E1E1),
      body: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xffEFEFEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dark Mode',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18,
              ),
            ),
            Switch(
              value: isChecked,
              onChanged: (value) {
                setState(
                  () {
                    isChecked = !isChecked;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

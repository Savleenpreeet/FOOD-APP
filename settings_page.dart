import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Settings'),
),
body: Column(
  children: [
    CupertinoSwitch(value: false, onChanged: (value){})
  ],
),
    );
  }
}
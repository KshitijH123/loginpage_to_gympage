import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  // Map to hold the checked state of each checkbox
  Map<int, bool> _checkedValues = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkboxes Page'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            value: _checkedValues[index] ?? false,
            onChanged: (bool? value) {
              setState(() {
                _checkedValues[index] = value ?? false;
              });
            },
            title: Text('Option ${index + 1}'),
          );
        },
      ),
    );
  }
}

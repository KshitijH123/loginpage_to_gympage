import 'package:flutter/material.dart';

class RadioCheckButton extends StatefulWidget {
  const RadioCheckButton({super.key});

  @override
  State<RadioCheckButton> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioCheckButton> {
  int? _selectedValue; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons Page'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return RadioListTile<int>(
            value: index,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value;
              });
            },
            title: Text('Option ${index + 1}'),
          );
        },
      ),
    );
  }
}

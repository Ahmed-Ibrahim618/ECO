import 'package:flutter/material.dart';

class SizeDropdownWidget extends StatefulWidget {
  @override
  _SizeDropdownWidgetState createState() => _SizeDropdownWidgetState();
}

class _SizeDropdownWidgetState extends State<SizeDropdownWidget> {
  String? _selectedItem; // Initial value for dropdown
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DropdownButton<String>(
            borderRadius: BorderRadius.circular(20),
            iconEnabledColor: Colors.lightBlue,
            isExpanded: true,
            value: _selectedItem,
            hint: Text('Select an size'), // Hint text
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue;
              });
            },
            items: <String?>[
              'Small',
              'Meduim',
              'Big',
            ].map<DropdownMenuItem<String>>((String? value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value ?? ''), // Display the value
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

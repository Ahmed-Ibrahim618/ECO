import 'package:flutter/material.dart';

class ModelDropdownWidget extends StatefulWidget {
  @override
  _ModelDropdownWidgetState createState() => _ModelDropdownWidgetState();
}

class _ModelDropdownWidgetState extends State<ModelDropdownWidget> {
  String? _selectedItem; // Initial value for dropdown
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
            hint: Text('Select an model'), // Hint text
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue;
              });
            },
            items: <String?>[
              'loarn',
              'loarn',
              'loarn',
              'loarn',
              'loarn',
              'loarn',
              'loarn',
              'loarn',
              'loarn',
              'loarn',
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

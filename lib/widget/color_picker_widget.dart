import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  @override
  _ColorPickerWidgetState createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  List<Color> _colors = [
    Colors.red,
    Colors.white70,
    Colors.blue,
    Colors.yellow,
    Colors.black,
    Colors.grey,
  ];
  late Color _selectedColor;

  @override
  void initState() {
    super.initState();
    _selectedColor = Color.fromARGB(0, 0, 0, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _colors.map((color) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedColor = color;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: _selectedColor == color
                    ? Border.all(color: Colors.black, width: 2)
                    : null,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

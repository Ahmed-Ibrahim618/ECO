import 'package:flutter/material.dart';

class PlateNumber extends StatelessWidget {
  const PlateNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 40,
        width: 40,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    );
  }
}

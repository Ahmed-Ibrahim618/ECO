import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/info_page.dart';

class CustomProfileWidget extends StatelessWidget {
  const CustomProfileWidget({
    super.key,
    required this.date,
    required this.themes,
  });
  final IconData themes;
  final String date;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => InfoPage()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'images/Rectangle 3.png',
                  ),
                ),
                Positioned(child: Icon(themes))
              ],
            ),
            Text(
              '     $date',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}

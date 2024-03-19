import 'package:flutter/material.dart';

class CustomRequestWidget extends StatelessWidget {
  const CustomRequestWidget({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: Image(
                      image: AssetImage('images/freepik--Car--inject-82.png')),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eco package',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'thu, 14 june 2023 / 12 pm',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle,
                        color: color),
                    child: Center(
                        child: Text(
                      '$text',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
            Divider(
              indent: 1,
              endIndent: 1,
              thickness: 0.2,
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My office',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'jeeep, model,122',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Text(
                    'total: 50.00 sar',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

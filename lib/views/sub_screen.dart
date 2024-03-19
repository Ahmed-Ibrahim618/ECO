import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Text(
                    'eco package',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 173, 173, 173), width: 1),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.timelapse),
                      ),
                      Text(
                        'take 30 mins',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.calendar_month),
                      ),
                      Text(
                        'every 2 weeks',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Text(
                          'once only',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'what’s included',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 173, 173, 173), width: 1),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.verified),
                      ),
                      Text(
                        'full exterior hand wash',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.verified),
                      ),
                      Text(
                        'door jamb cleaning',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.verified),
                      ),
                      Text(
                        'full exterior hand wash',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.verified),
                      ),
                      Text(
                        'door jamb cleaning',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Text(
                    'material used',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // First image
                      Image.asset(
                        'images/Rectangle 3.png',
                      ),
                      // Second image stacked on top of the first one
                      Positioned(
                        child: Image.asset(
                          'images/images__10_-removebg-preview 1.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // First image
                      Image.asset(
                        'images/Rectangle 3.png',
                      ),
                      // Second image stacked on top of the first one
                      Positioned(
                        child: Image.asset(
                          'images/download__1_-removebg-preview 1.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // First image
                      Image.asset(
                        'images/Rectangle 3.png',
                      ),
                      // Second image stacked on top of the first one
                      Positioned(
                        child: Image.asset(
                          'images/images__11_-removebg-preview 1.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // First image
                      Image.asset(
                        'images/Rectangle 3.png',
                      ),
                      // Second image stacked on top of the first one
                      Positioned(
                        child: Image.asset(
                          'images/[removal 1.png',
                        ),
                      ),
                    ],
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

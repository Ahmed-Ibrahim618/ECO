import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/sub_screen.dart';

class CustomPackageWidget extends StatelessWidget {
  const CustomPackageWidget({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 173, 173, 173), width: 1),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          children: [
            Image(
              fit: BoxFit.contain,
              image: AssetImage(image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ECO * package',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'full exterior hand wash',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'take: 2 hrs',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.orange),
                        Text(
                          'get 1 coin',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SubScreen();
                            },
                          );
                        },
                        child: Icon(Icons.info_outline)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        '50 sar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.lightBlue),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

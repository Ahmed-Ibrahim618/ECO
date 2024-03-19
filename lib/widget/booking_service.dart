import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/select_package.dart';

class BookingServiceWidget extends StatelessWidget {
  const BookingServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectPackage()));
              // Show the sub-screen when the button is pressed
            },
            child: Text(
              'Book your service now',
              style: TextStyle(fontSize: 28, color: Colors.blue),
            )),
        CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 61, 161, 227),
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

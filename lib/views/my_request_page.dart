import 'package:flutter/material.dart';
import 'package:flutter_application_4/widget/custom_request_widget.dart';

class MyRequestPage extends StatelessWidget {
  const MyRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.lightBlue,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'back',
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Request',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'lorem lorem lorem',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            CustomRequestWidget(color: Colors.orangeAccent, text: 'waiting'),
            CustomRequestWidget(color: Colors.green, text: 'done'),
            CustomRequestWidget(color: Colors.red, text: 'cancled'),
          ],
        ),
      ),
    );
  }
}

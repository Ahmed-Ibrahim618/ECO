import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/login_page.dart';

class CreatPassword extends StatelessWidget {
  const CreatPassword({super.key});

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
            'creat password',
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'create new password',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text(
              'your new password must be different \n from previous used password',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Text(
                    'new password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'enter password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blueAccent,
                ),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                hintText: 'enter password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Text(
                    're-type new password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 're-type new password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blueAccent,
                ),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                hintText: 'enter password',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

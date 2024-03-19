import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/calendar_page.dart';
import 'package:flutter_application_4/widget/custom_package_widgrt.dart';

class SelectPackage extends StatelessWidget {
  const SelectPackage({super.key});

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
            'select package',
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'select a package to car wash',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    'main service',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            CustomPackageWidget(
              image: 'images/Rectangle 1.png',
            ),
            CustomPackageWidget(
              image: 'images/Rectangle 1 (2).png',
            ),
            CustomPackageWidget(
              image: 'images/Rectangle 1 (1).png',
            ),
            Row(
              children: [
                Text(
                  'premium service',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            CustomPackageWidget(
              image: 'images/Rectangle 1 (3).png',
            ),
            CustomPackageWidget(
              image: 'images/Rectangle 1 (4).png',
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalenderPage()));
                  },
                  child: const Text(
                    'NEXT',
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

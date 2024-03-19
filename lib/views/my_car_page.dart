import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/add_car_page.dart';
import 'package:flutter_application_4/widget/custom_my_car_widget.dart';

class MyCarPage extends StatelessWidget {
  const MyCarPage({super.key});

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
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'choose your vehicle',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'What vehicle you look to wash',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            CustomMyCarWidget(
                image: 'images/freepik--Car--inject-47 (1).png',
                volum: 'small'),
            CustomMyCarWidget(
                image: 'images/freepik--Car--inject-47 (2).png',
                volum: 'meduim'),
            CustomMyCarWidget(
                image: 'images/freepik--Car--inject-47.png', volum: 'big'),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCarPage()));
                    },
                    icon: Icon(Icons.add)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCarPage()));
                    },
                    child: Text('Add More Car'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

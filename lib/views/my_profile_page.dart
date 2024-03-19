import 'package:flutter/material.dart';
import 'package:flutter_application_4/widget/custom_profile_widget.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

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
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('images/e1bfd08a1f9d51916752d4d7ec9713f9.jpg'),
                  radius: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(
                        'Ahmed Ibrahem',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ahmed618@gmail.com',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
              height: 40,
              thickness: 1,
            ),
            CustomProfileWidget(
                date: 'account information', themes: Icons.person),
            CustomProfileWidget(
                date: 'addresses information', themes: Icons.location_city),
            CustomProfileWidget(date: 'payment methods', themes: Icons.payment),
            CustomProfileWidget(date: 'my vehicles', themes: Icons.car_crash),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
              height: 20,
              thickness: 1,
            ),
            CustomProfileWidget(date: 'About us', themes: Icons.info),
            CustomProfileWidget(date: 'support', themes: Icons.call),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
              height: 20,
              thickness: 1,
            ),
            CustomProfileWidget(date: 'delete account ', themes: Icons.delete),
            CustomProfileWidget(date: 'logout', themes: Icons.logout),
          ],
        ),
      ),
    );
  }
}

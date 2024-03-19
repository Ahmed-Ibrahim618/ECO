import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/sms_verification.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
            'reset password',
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(image: AssetImage('images/Group 34524.png')),
              Image(image: AssetImage('images/Group 34528.png')),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Forgot password',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            'Please enter the phone number \n registered on your account',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.blueAccent,
              ),
              hintText: 'Enter email',
            ),
          ),
          SizedBox(
            height: 50,
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
                          builder: (context) => SmsVerification()));
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
    );
  }
}

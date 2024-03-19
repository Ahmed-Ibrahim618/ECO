import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/creat_password.dart';
import 'package:pinput/pinput.dart';

class SmsVerification extends StatelessWidget {
  const SmsVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
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
            'SMS Verification',
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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image(image: AssetImage('images/Group 34524 (1).png')),
                  Image(image: AssetImage('images/Frame.png')),
                ],
              ),
            ),
            Text(
              'Enter oTP code to verify',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text(
              'A 6 verification code has been sent to..345',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: Colors.black),
                  ),
                ),
                onCompleted: (pin) => debugPrint(pin),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreatPassword()));
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

import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/login_page.dart';
import 'package:flutter_application_4/views/third_introduction_view.dart';

class SecondIntroductionView extends StatelessWidget {
  const SecondIntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 235, 244),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 4, 4, 4),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: const Text(
              'skip',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: AssetImage('images/Subtract (1).png'),
                height: 300,
              ),
              Image(
                  image: AssetImage(
                      'images/d219892ff876c1d90b7949308c563878-removebg-preview 1.png'))
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              ' Car  wash Service with steam',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text('jnurfdsfasrfrwfsrfavadtvsdatvsavthfein'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdIntroductionView()));
                },
                icon: const Icon(
                  Icons.arrow_circle_right_rounded,
                  size: 55,
                  color: Colors.lightBlue,
                )),
          )
        ],
      ),
    );
  }
}
